#include "../include/restr.h"

int *create_maps(int a, int groups_num, int VZ)
{
    float pi = 4 * std::atan(1);
    float tana = std::tan(a * pi / 180);
    int VZ_min = -(VZ / 2);
    int *maps = (int *)malloc(sizeof(int) * groups_num * VZ * 2);
    for (int k = 0; k < groups_num; k++)
    {
        float b = (360 / groups_num + 1) * k;
        for (int z = 0; z < VZ; z++)
        {
            int z_i = z + VZ_min;
            int x_off = std::round(z_i * tana * std::cos(b * pi / 180));
            int y_off = std::round(z_i * tana * std::sin(b * pi / 180));
            maps[k * (VZ * 2) + z * 2 + 0] = x_off;
            maps[k * (VZ * 2) + z * 2 + 1] = y_off;
        }
    }
    return maps;
}

int *create_maps(int a, int b, int VZ, int k)
{
    float pi = 4 * std::atan(1);
    float tana = std::tan(a * pi / 180);
    int VZ_min = -(VZ / 2);
    int *maps = (int *)malloc(sizeof(int) * VZ * 2);

    for (int z = 0; z < VZ; z++)
    {
        int z_i = z + VZ_min;
        int x_off = std::round(z_i * tana * std::cos(b * pi / 180));
        int y_off = std::round(z_i * tana * std::sin(b * pi / 180));
        maps[z * 2 + 0] = x_off;
        maps[z * 2 + 1] = y_off;
    }

    return maps;
}

void voxel_sum(cv::Mat &x, xray3d::xray3d_t *&voxel_space, int VZ, int z)
{

    for (int i = 0; i < x.rows; i++)
    {
        for (int j = 0; j < x.cols; j++)
        {
            xray3d::xray3d_t tmp = x.at<uchar>(i, j);
            voxel_space[z * x.rows * x.cols + i * x.cols + j] += tmp;
        }
    }
}

void xray3d::restr::run(string img_path, int VX, int VY, int VZ, int groups_num, int a, xray3d::xray3d_t *&voxel_space)
{
    std::vector<cv::String> img_names;
    cv::glob(img_path, img_names);
    int *maps = create_maps(a, groups_num, VZ);

    for (int k = 0; k < groups_num; k++)
    {
        cout << k + 1 << "/" << groups_num << endl;
        cv::Mat x = cv::imread(img_names[k], 0);
        for (int z = 0; z < VZ; z++)
        {
            cv::Mat bg = x.clone();
            int x_off = maps[k * (VZ * 2) + z * 2 + 0];
            int y_off = maps[k * (VZ * 2) + z * 2 + 1];
            x_off = max(x_off, 0);
            y_off = max(y_off, 0);
            x_off = min(x_off, VX - 1);
            y_off = min(y_off, VY - 1);

            cv::Mat src_zone = x(cv::Rect(0, 0, VX - x_off - 1, VY - y_off - 1));
            cv::Mat dst_zone = bg(cv::Range(y_off, y_off + src_zone.rows), cv::Range(x_off, x_off + src_zone.cols));

            src_zone.copyTo(dst_zone);

            voxel_sum(bg, voxel_space, VZ, z);
        }
    }
}

void xray3d::restr::save_imgs_in_z_axis(string save_path, xray3d::xray3d_t *&voxel_space, int VZ, int VX, int VY)
{
    for (int z = 0; z < VZ; z++)
    {
        cv::Mat img, img_8u;
        img.create(cv::Size(VX, VY), CV_32SC1);
        memcpy(img.data, voxel_space + z * VX * VY, sizeof(int) * VX * VY);
        cv::normalize(img, img_8u, 0, 255, cv::NORM_MINMAX, CV_8UC1);
        bool ret = cv::imwrite(save_path + "/" + std::to_string(z) + ".bmp", img_8u);
        cout << ret << ":" << z << "/" << VZ << ",path:" << save_path + "/" + std::to_string(z) + ".bmp" << endl;
    }
}

void xray3d::restr::run_shifts_single(string img_path, int VX, int VY, int VZ, int a, int b, xray3d::xray3d_t *&voxel_space, int k)
{
    cv::Mat x = cv::imread(img_path, 0);
    int *maps = create_maps(a, b, VZ, k);
    x.convertTo(x, CV_32SC1);

    struct timeval tstart, tend;
    double timeUsed;
    gettimeofday(&tstart, NULL);

    for (int z = 0; z < VZ; z++)
    {
        int x_off = maps[z * 2 + 0];
        int y_off = maps[z * 2 + 1];
        x_off = max(x_off, 0);
        y_off = max(y_off, 0);
        x_off = min(x_off, VX - 1);
        y_off = min(y_off, VY - 1);
        int voxel_z_offset = z * x.cols * x.rows;
        int voxel_xy_offset = (y_off)*x.cols + x_off;
        memcpy(voxel_space + voxel_z_offset + voxel_xy_offset, x.data, sizeof(xray3d::xray3d_t) * x.cols * x.rows);
    }

    gettimeofday(&tend, NULL);
    timeUsed = 1000000 * (tend.tv_sec - tstart.tv_sec) + tend.tv_usec - tstart.tv_usec;
    cout << " Time=" << timeUsed / 1000 << " ms" << endl;
}