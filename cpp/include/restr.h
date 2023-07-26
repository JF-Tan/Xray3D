
#include <sys/time.h>
#include <iostream>
#include <opencv2/opencv.hpp>
#include <string.h>

using namespace std;

namespace xray3d
{
    typedef uchar xray3d_t;
    class restr
    {
    private:
        /* data */
    public:
        void run(string img_path, int VX, int VY, int VZ, int groups_num, int a, xray3d::xray3d_t *&voxel_space);
        void run_shifts_single(string img_path, int VX, int VY, int VZ, int a, int b, xray3d::xray3d_t *&voxel_space, int k);
        void run_muti(string img_path, int VX, int VY, int VZ, int groups_num, int a, xray3d::xray3d_t *&voxel_space);
        void save_imgs_in_z_axis(string save_path, xray3d::xray3d_t *&voxel_space, int VZ, int VX, int VY);
        restr(/* args */);
        ~restr();
    };

    restr::restr(/* args */)
    {
    }

    restr::~restr()
    {
    }

}
