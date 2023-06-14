#include "../include/restr.h"

int main(int argc, char **argv)
{
    cout << "start\n";
    xray3d::restr mRestr;
    xray3d::xray3d_t *voxel_space = (xray3d::xray3d_t *)malloc(sizeof(xray3d::xray3d_t) * 200 * 1000 * 1000);
    mRestr.run_shifts_single("/home/tanee/GitHub/Xray3D/asserts/2/1.bmp", 1000, 1000, 200, 30, 0, voxel_space, 0);
    cout << "ok" << endl;
    cout << "saving results..." << endl;
    mRestr.save_imgs_in_z_axis("/home/tanee/GitHub/Xray3D/asserts/results", voxel_space, 200, 1000, 1000);

    return 0;
}
