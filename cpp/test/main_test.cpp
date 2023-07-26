#include "../include/restr.h"

int main(int argc, char **argv)
{
    int VX = 1000;
    int VY = VX;
    int VZ = 200;
    cout << "start\n";
    xray3d::restr mRestr;
    xray3d::xray3d_t *voxel_space = (xray3d::xray3d_t *)malloc(sizeof(xray3d::xray3d_t) * VZ * VX * VY);
    mRestr.run_shifts_single("/home/tanee/GitHub/Xray3D/asserts/2/1.bmp", VX, VY, VZ, 30, 0, voxel_space, 0);
    cout << "ok" << endl;
    cout << "saving results..." << endl;
    // mRestr.save_imgs_in_z_axis("/home/tanee/GitHub/Xray3D/asserts/results", voxel_space, 200, 1000, 1000);

    return 0;
}
