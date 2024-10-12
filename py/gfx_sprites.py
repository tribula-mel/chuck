from game_types import sprite_t

platform = sprite_t (0x01, 0x08, 0x80,
      [
         0xfb,
         0x00,
         0xbf,
         0x00,
         0xef,
         0x00,
         0x00,
         0x00
      ])

ladder = sprite_t (0x01, 0x08, 0x08,
      [
         0x42,
         0x42,
         0x42,
         0x42,
         0x7e,
         0x42,
         0x42,
         0x42
      ])

egg = sprite_t (0x01, 0x08, 0x88,
      [
         0x00,
         0x38,
         0x6c,
         0x5e,
         0x7e,
         0x7c,
         0x38,
         0x00
      ])

cage = sprite_t (0x03, 0x30, 0xa1,
      [
         0x00, 0x38, 0x00,
         0x00, 0x44, 0x00,
         0x00, 0x44, 0x00,
         0x00, 0x44, 0x00,
         0x00, 0x38, 0x00,
         0x00, 0x10, 0x00,
         0x00, 0xfe, 0x00,
         0x03, 0x7d, 0x80,
         0x0c, 0xd6, 0x60,
         0x11, 0x55, 0x10,
         0x22, 0x54, 0x88,
         0x24, 0x92, 0x48,
         0x44, 0x92, 0x44,
         0x48, 0x92, 0x24,
         0x88, 0x92, 0x22,
         0x89, 0x11, 0x22,
         0xd1, 0x11, 0x16,
         0xb1, 0x11, 0x1a,
         0x99, 0x11, 0x32,
         0x97, 0x11, 0xd2,
         0x91, 0xff, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0xd1, 0x11, 0x16,
         0xb1, 0x11, 0x1a,
         0x99, 0x11, 0x32,
         0x97, 0x11, 0xd2,
         0x91, 0xff, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x91, 0x11, 0x12,
         0x51, 0x11, 0x14,
         0x31, 0x11, 0x18,
         0x19, 0x11, 0x30,
         0x07, 0x11, 0xc0,
         0x00, 0xfe, 0x00
      ])

seed = sprite_t (0x01, 0x08, 0xa0,
      [
         0x00,
         0x00,
         0x00,
         0x08,
         0x14,
         0x2a,
         0x55,
         0x00
      ])

# duck facing right straight legs
duck_r = sprite_t (0x01, 0x14, 0x20,
      [
         0x0c,
         0x1b,
         0x1c,
         0x08,
         0x08,
         0x04,
         0x04,
         0x02,
         0x32,
         0x7b,
         0x7f,
         0x7f,
         0x7f,
         0x3e,
         0x18,
         0x10,
         0x10,
         0x10,
         0x10,
         0x18
      ])

# duck facing right spread legs
duck_rs = sprite_t (0x01, 0x14, 0x20,
      [
         0x0d,
         0x1a,
         0x1d,
         0x08,
         0x08,
         0x04,
         0x04,
         0x02,
         0x32,
         0x7b,
         0x7f,
         0x7f,
         0x7f,
         0x3e,
         0x18,
         0x28,
         0x28,
         0x44,
         0x45,
         0x22
      ])

# duck facing left straight legs
duck_l = sprite_t (0x01, 0x14, 0x20,
      [
         0x30,
         0xd8,
         0x38,
         0x10,
         0x10,
         0x20,
         0x20,
         0x40,
         0x4c,
         0xde,
         0xfe,
         0xfe,
         0xfe,
         0x7c,
         0x18,
         0x08,
         0x08,
         0x08,
         0x08,
         0x18
      ])

# duck facing left spread legs
duck_ls = sprite_t (0x01, 0x14, 0x20,
      [
         0xb0,
         0x58,
         0xb8,
         0x10,
         0x10,
         0x20,
         0x20,
         0x40,
         0x4c,
         0xde,
         0xfe,
         0xfe,
         0xfe,
         0x7c,
         0x18,
         0x14,
         0x14,
         0x22,
         0xa2,
         0x44
      ])

# duck back left leg longer
duck_bll = sprite_t (0x01, 0x14, 0x20,
      [
         0x18,
         0x3c,
         0x3c,
         0x3c,
         0x18,
         0x18,
         0x18,
         0x3c,
         0x7e,
         0x7e,
         0x7e,
         0x7e,
         0x7e,
         0x3c,
         0x3c,
         0x24,
         0x24,
         0x26,
         0x20,
         0x60
      ])

# duck back right leg longer
duck_brl = sprite_t (0x01, 0x15, 0x20,
      [
         0x18,
         0x3c,
         0x3c,
         0x3c,
         0x18,
         0x18,
         0x18,
         0x3c,
         0x7e,
         0x7e,
         0x7e,
         0x7e,
         0x7e,
         0x3c,
         0x3c,
         0x24,
         0x24,
         0x64,
         0x04,
         0x04,
         0x06
      ])

# duck right begin stooping
duck_rbs = sprite_t (0x02, 0x14, 0x20,
      [
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x38,
         0x30, 0x28,
         0x78, 0x78,
         0x7c, 0xc4,
         0x7f, 0x82,
         0x7f, 0x80,
         0x3f, 0x00,
         0x3f, 0x00,
         0x1f, 0x00,
         0x16, 0x00,
         0x10, 0x00,
         0x10, 0x00,
         0x10, 0x00,
         0x18, 0x00
      ])

# duck right end stooping
duck_res = sprite_t (0x02, 0x14, 0x20,
      [
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x30, 0x00,
         0x78, 0x00,
         0x7c, 0x00,
         0x7e, 0x00,
         0x7f, 0xf8,
         0x3f, 0xf4,
         0x3f, 0x14,
         0x1f, 0x08,
         0x16, 0x08,
         0x10, 0x08,
         0x10, 0x00,
         0x10, 0x00,
         0x18, 0x00
      ])

# duck left begin stooping
duck_lbs = sprite_t (0x02, 0x14, 0x20,
      [
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x1c, 0x00,
         0x14, 0x0c,
         0x1e, 0x1e,
         0x23, 0x3e,
         0x43, 0xfe,
         0x01, 0xfe,
         0x00, 0xfc,
         0x00, 0xfc,
         0x00, 0xf8,
         0x00, 0x68,
         0x00, 0x08,
         0x00, 0x08,
         0x00, 0x08,
         0x00, 0x18
      ])

# duck left end stooping
duck_les = sprite_t (0x02, 0x14, 0x20,
      [
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x00,
         0x00, 0x0c,
         0x00, 0x1e,
         0x00, 0x3e,
         0x00, 0x7e,
         0x1f, 0xfe,
         0x2f, 0xfc,
         0x28, 0xfc,
         0x10, 0xf8,
         0x10, 0x68,
         0x10, 0x08,
         0x00, 0x08,
         0x00, 0x08,
         0x00, 0x18
      ])

# chuck right straight legs
chuck_r = sprite_t (0x01, 0x10, 0x02,
      [
         0x18,
         0x3c,
         0xff,
         0x34,
         0x3c,
         0x10,
         0x18,
         0x3c,
         0x6e,
         0x6e,
         0x6e,
         0x6e,
         0x3c,
         0x18,
         0x10,
         0x18
      ])

# chuck right spread legs arm to the right
chuck_rslar = sprite_t (0x01, 0x10, 0x02,
      [
         0x18,
         0x3c,
         0xff,
         0x34,
         0x3c,
         0x10,
         0x18,
         0x3c,
         0x6e,
         0x6e,
         0x76,
         0x76,
         0x3c,
         0x38,
         0x4a,
         0x24
      ])

# chuck right spread legs arm to the left
chuck_rslal = sprite_t (0x01, 0x10, 0x02,
      [
         0x18,
         0x3c,
         0xff,
         0x34,
         0x3c,
         0x10,
         0x18,
         0x3c,
         0x6e,
         0x6e,
         0x5e,
         0x5e,
         0x3c,
         0x38,
         0x4a,
         0x24
      ])

# chuck left straight legs
chuck_l = sprite_t (0x01, 0x10, 0x02,
      [
         0x18,
         0x3c,
         0xff,
         0x2c,
         0x3c,
         0x08,
         0x18,
         0x3c,
         0x76,
         0x76,
         0x76,
         0x76,
         0x3c,
         0x18,
         0x08,
         0x18
      ])

# chuck left spread legs arm to the left
chuck_lslal = sprite_t (0x01, 0x10, 0x02,
      [
         0x18,
         0x3c,
         0xff,
         0x2c,
         0x3c,
         0x08,
         0x18,
         0x3c,
         0x76,
         0x76,
         0x6e,
         0x6e,
         0x3c,
         0x1c,
         0x52,
         0x24
      ])

# chuck left spread legs arm to the right
chuck_lslar = sprite_t (0x01, 0x10, 0x02,
      [
         0x18,
         0x3c,
         0xff,
         0x2c,
         0x3c,
         0x08,
         0x18,
         0x3c,
         0x76,
         0x76,
         0x7a,
         0x7a,
         0x3c,
         0x1c,
         0x52,
         0x24
      ])

# chuck back both arms not visible
chuck_b = sprite_t (0x01, 0x10, 0x02,
      [
         0x18,
         0x3c,
         0xff,
         0x3c,
         0x3c,
         0x18,
         0x18,
         0xbd,
         0xff,
         0x7e,
         0x7e,
         0x7e,
         0x3c,
         0x24,
         0x24,
         0x66
      ])

# chuck back left arm down right arm up
chuck_bldru = sprite_t (0x01, 0x12, 0x02,
      [
         0x18,
         0x3c,
         0xff,
         0x3c,
         0x3d,
         0x19,
         0x19,
         0x3d,
         0xff,
         0xfe,
         0xfe,
         0xfe,
         0xbc,
         0x3e,
         0x20,
         0x20,
         0x20,
         0x60
      ])

# chuck back left arm up right arm down
chuck_blurd = sprite_t (0x01, 0x12, 0x02,
      [
         0x18,
         0x3c,
         0xff,
         0x3c,
         0xbc,
         0x98,
         0x98,
         0xbc,
         0xff,
         0x7f,
         0x7f,
         0x7f,
         0x3d,
         0x7c,
         0x04,
         0x04,
         0x04,
         0x06
      ])

chuck_sprites = (chuck_r, chuck_rslar, chuck_rslal, chuck_l, chuck_lslal, chuck_lslar, chuck_b, chuck_bldru, chuck_blurd)

# flying duck right closed beak wing down
flying_duck_rcbwd = sprite_t (0x02, 0x18, 0x02,
      [
         0x00, 0x70,
         0x00, 0xf8,
         0x01, 0xe8,
         0x01, 0xef,
         0x01, 0xff,
         0x01, 0xf8,
         0x00, 0xf0,
         0x00, 0xe0,
         0x00, 0x60,
         0x0e, 0x70,
         0x1f, 0x70,
         0x3f, 0xf8,
         0x7f, 0xf8,
         0xff, 0x78,
         0xff, 0xb8,
         0xbf, 0xbc,
         0xbf, 0xbc,
         0xdf, 0xbc,
         0x6f, 0x7c,
         0x76, 0xfc,
         0x39, 0xf8,
         0x1f, 0xf8,
         0x0f, 0xf0,
         0x03, 0xe0
      ])

# flying duck right spread beak wing up
flying_duck_rsbwu = sprite_t (0x02, 0x18, 0x02,
      [
         0x00, 0x70,
         0x00, 0xf9,
         0x01, 0xea,
         0x01, 0xec,
         0x01, 0xfc,
         0x01, 0xfa,
         0x00, 0xf1,
         0x00, 0xe0,
         0x00, 0x60,
         0x0e, 0x70,
         0x1f, 0x70,
         0x3f, 0xf8,
         0x71, 0xf8,
         0xee, 0x78,
         0xdf, 0xb8,
         0xbf, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0x7f, 0xfc,
         0x7f, 0xfc,
         0x3f, 0xf8,
         0x1f, 0xf8,
         0x0f, 0xf0,
         0x03, 0xe0
      ])

# flying duck left closed beak wing down
flying_duck_lcbwd = sprite_t (0x02, 0x18, 0x02,
      [
         0x0e, 0x00,
         0x1f, 0x00,
         0x17, 0x80,
         0xf7, 0x80,
         0xff, 0x80,
         0x1f, 0x80,
         0x0f, 0x00,
         0x07, 0x00,
         0x06, 0x00,
         0x0e, 0x70,
         0x0e, 0xf8,
         0x1f, 0xfc,
         0x1f, 0xfe,
         0x1e, 0xff,
         0x1d, 0xff,
         0x3d, 0xfd,
         0x3d, 0xfd,
         0x3d, 0xfb,
         0x3e, 0xf6,
         0x3f, 0x6e,
         0x1f, 0x9c,
         0x1f, 0xf8,
         0x0f, 0xf0,
         0x07, 0xc0
      ])

# flying duck left spread beak wing up
flying_duck_lsbwu = sprite_t (0x02, 0x18, 0x02,
      [
         0x0e, 0x00,
         0x9f, 0x00,
         0x57, 0x80,
         0x37, 0x80,
         0x3f, 0x80,
         0x5f, 0x80,
         0x8f, 0x00,
         0x07, 0x00,
         0x06, 0x00,
         0x0e, 0x70,
         0x0e, 0xf8,
         0x1f, 0xfc,
         0x1f, 0x8e,
         0x1e, 0x77,
         0x1d, 0xfb,
         0x3f, 0xfd,
         0x3f, 0xff,
         0x3f, 0xff,
         0x3f, 0xfe,
         0x3f, 0xfe,
         0x1f, 0xfc,
         0x1f, 0xf8,
         0x0f, 0xf0,
         0x07, 0xc0
      ])

# elevator
elevator = sprite_t (0x02, 0x04, 0x88,
      [
         0x1f, 0xf8,
         0x1f, 0xf8,
         0x1b, 0xd8,
         0x11, 0x88,
      ])

# life
life = sprite_t (0x01, 0x03, 0x02,
      [
         0x40,
         0xe0,
         0x00,
      ])

# digit 0
digit_0 = sprite_t (0x01, 0x07, 0x80,
      [
         0x60,
         0x90,
         0x90,
         0x90,
         0x90,
         0x90,
         0x60,
      ])

# digit 1
digit_1 = sprite_t (0x01, 0x07, 0x08,
      [
         0x20,
         0x60,
         0x20,
         0x20,
         0x20,
         0x20,
         0x70,
      ])

# digit 2
digit_2 = sprite_t (0x01, 0x07, 0x08,
      [
         0x60,
         0x90,
         0x10,
         0x20,
         0x40,
         0x80,
         0xf0,
      ])

# digit 3
digit_3 = sprite_t (0x01, 0x07, 0x08,
      [
         0x60,
         0x90,
         0x10,
         0x20,
         0x10,
         0x90,
         0x60,
      ])

# digit 4
digit_4 = sprite_t (0x01, 0x07, 0x08,
      [
         0x80,
         0x80,
         0xa0,
         0xa0,
         0xf0,
         0x20,
         0x20,
      ])

# digit 5
digit_5 = sprite_t (0x01, 0x07, 0x08,
      [
         0xf0,
         0x80,
         0xe0,
         0x10,
         0x10,
         0x90,
         0x60,
      ])

# digit 6
digit_6 = sprite_t (0x01, 0x07, 0x08,
      [
         0x60,
         0x90,
         0x80,
         0xe0,
         0x90,
         0x90,
         0x60,
      ])

# digit 7
digit_7 = sprite_t (0x01, 0x07, 0x08,
      [
         0xf0,
         0x10,
         0x10,
         0x20,
         0x20,
         0x40,
         0x40,
      ])

# digit 8
digit_8 = sprite_t (0x01, 0x07, 0x08,
      [
         0x60,
         0x90,
         0x90,
         0x60,
         0x90,
         0x90,
         0x60,
      ])

# digit 9
digit_9 = sprite_t (0x01, 0x07, 0x08,
      [
         0x60,
         0x90,
         0x90,
         0x70,
         0x10,
         0x90,
         0x60,
      ])

# score
score_txt = sprite_t (0x03, 0x09, 0x08,
      [
         0xff, 0xff, 0xf8,
         0x88, 0x89, 0x88,
         0xbb, 0xaa, 0xb8,
         0xbb, 0xaa, 0xb8,
         0x8b, 0xa9, 0x98,
         0xeb, 0xaa, 0xb8,
         0xeb, 0xaa, 0xb8,
         0x88, 0x8a, 0x88,
         0xff, 0xff, 0xf8,
      ])

# red background for score
red_background = sprite_t ( 0x04, 0x09, 0xa0,
      [
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
         0xff, 0xff, 0xff, 0xfe,
      ])

# player
player_txt = sprite_t (0x04, 0x09, 0x08,
      [
         0xff, 0xff, 0xff, 0xff,
         0x9b, 0xda, 0x89, 0xff,
         0xab, 0xaa, 0xba, 0xff,
         0xab, 0xaa, 0xba, 0xff,
         0x9b, 0x8d, 0x99, 0xff,
         0xbb, 0xad, 0xba, 0xff,
         0xbb, 0xad, 0xba, 0xff,
         0xb8, 0xad, 0x8a, 0xff,
         0xff, 0xff, 0xff, 0xff,
      ])

# level
level_txt = sprite_t (0x05, 0x09, 0x08,
      [
         0xff, 0xff, 0xff, 0xff, 0xfc,
         0xb8, 0xa8, 0xbf, 0xff, 0xfc,
         0xbb, 0xab, 0xbf, 0xff, 0xfc,
         0xbb, 0xab, 0xbf, 0xff, 0xfc,
         0xb9, 0xa9, 0xbf, 0xff, 0xfc,
         0xbb, 0xab, 0xbf, 0xff, 0xfc,
         0xbb, 0xab, 0xbf, 0xff, 0xfc,
         0x88, 0xd8, 0x8f, 0xff, 0xfc,
         0xff, 0xff, 0xff, 0xff, 0xfc,
      ])

# bonus
bonus_txt = sprite_t (0x06, 0x09, 0x08,
      [
         0xff, 0xff, 0xff, 0xff, 0xff, 0xf0,
         0x98, 0xb5, 0x47, 0xff, 0xff, 0xf0,
         0xaa, 0x95, 0x5f, 0xff, 0xff, 0xf0,
         0xaa, 0x95, 0x5f, 0xff, 0xff, 0xf0,
         0x9a, 0xa5, 0x47, 0xff, 0xff, 0xf0,
         0xaa, 0xa5, 0x77, 0xff, 0xff, 0xf0,
         0xaa, 0xb5, 0x77, 0xff, 0xff, 0xf0,
         0x98, 0xb4, 0x47, 0xff, 0xff, 0xf0,
         0xff, 0xff, 0xff, 0xff, 0xff, 0xf0,
      ])

# time
time_txt = sprite_t (0x05, 0x09, 0x08,
      [
         0xff, 0xff, 0xff, 0xff, 0xc0,
         0x8a, 0x48, 0xff, 0xff, 0xc0,
         0xda, 0x4b, 0xff, 0xff, 0xc0,
         0xda, 0xab, 0xff, 0xff, 0xc0,
         0xda, 0xa9, 0xff, 0xff, 0xc0,
         0xda, 0xab, 0xff, 0xff, 0xc0,
         0xda, 0xeb, 0xff, 0xff, 0xc0,
         0xda, 0xe8, 0xff, 0xff, 0xc0,
         0xff, 0xff, 0xff, 0xff, 0xc0,
      ])

# title letter C
title_c = sprite_t (0x02, 0x1e, 0x02,
      [
         0x03, 0x80,
         0x0f, 0xe0,
         0x1f, 0xf0,
         0x1f, 0xf8,
         0x3f, 0xf8,
         0x3f, 0xfc,
         0x7f, 0xfc,
         0x7f, 0xfc, 
         0x7e, 0x7c,
         0x7c, 0x38,
         0xf8, 0x18,
         0xf8, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00, 
         0xf0, 0x00,
         0xf0, 0x00,
         0xf8, 0x00,
         0xf8, 0x18,
         0x7c, 0x38,
         0x7e, 0x7c,
         0x7f, 0xfc,
         0x7f, 0xfc, 
         0x3f, 0xfc,
         0x3f, 0xf8,
         0x1f, 0xf8,
         0x1f, 0xf0,
         0x0f, 0xe0,
         0x03, 0x80,
      ])

# title letter H
title_h = sprite_t (0x02, 0x1e, 0x02,
      [
         0x60, 0x18,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0x60, 0x18,
      ])

# title letter U
title_u = sprite_t (0x02, 0x1e, 0x02,
      [
         0x60, 0x18,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf0, 0x3c,
         0xf8, 0x7c,
         0xfc, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0x7f, 0xf8,
         0x7f, 0xf8,
         0x3f, 0xf0,
      ])

# title letter K
title_k = sprite_t (0x02, 0x1e, 0x02,
      [
         0x60, 0x10,
         0xf0, 0x38,
         0xf0, 0x38,
         0xf0, 0x7c,
         0xf0, 0x7c,
         0xf0, 0xfc,
         0xf0, 0xfc,
         0xf1, 0xf8,
         0xf1, 0xf8,
         0xf3, 0xf0,
         0xf3, 0xf0,
         0xf7, 0xe0,
         0xff, 0xe0,
         0xff, 0xc0,
         0xff, 0x80,
         0xff, 0xc0,
         0xff, 0xc0,
         0xff, 0xe0,
         0xff, 0xe0,
         0xf3, 0xf0,
         0xf3, 0xf0,
         0xf1, 0xf8,
         0xf1, 0xf8,
         0xf0, 0xfc,
         0xf0, 0xfc,
         0xf0, 0x7c,
         0xf0, 0x7c,
         0xf0, 0x38,
         0xf0, 0x38,
         0x60, 0x10,
      ])

# title letter I
title_i = sprite_t (0x02, 0x1e, 0x02,
      [
         0x7f, 0xf8,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0x7f, 0xf8,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x07, 0x80,
         0x7f, 0xf8,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0x7f, 0xf8,
      ])

# title letter E
title_e = sprite_t ( 0x02, 0x1e, 0x02,
      [
         0x3f, 0xf8,
         0x7f, 0xfc,
         0x7f, 0xfc,
         0xff, 0xfc,
         0xff, 0xfc,
         0xff, 0xf8,
         0xf8, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xff, 0xe0,
         0xff, 0xf0,
         0xff, 0xf0,
         0xff, 0xf0,
         0xff, 0xf0,
         0xff, 0xe0,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf8, 0x00,
         0xff, 0xf8,
         0xff, 0xfc,
         0xff, 0xfc,
         0x7f, 0xfc,
         0x7f, 0xfc,
         0x3f, 0xf8,
      ])

# title letter G
title_g = sprite_t (0x02, 0x1e, 0x02,
      [
         0x03, 0x80,
         0x0f, 0xe0,
         0x1f, 0xf0,
         0x1f, 0xf8,
         0x3f, 0xf8,
         0x3f, 0xfc,
         0x7f, 0xfc,
         0x7f, 0xfc,
         0x7e, 0x7c,
         0x7c, 0x38,
         0xf8, 0x18,
         0xf8, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0x00,
         0xf0, 0xf8,
         0xf0, 0xf8,
         0xf8, 0xfc,
         0xf8, 0x7c,
         0x7c, 0x3c,
         0x7e, 0x3c,
         0x7f, 0x7c,
         0x7f, 0xfc,
         0x3f, 0xfc,
         0x3f, 0xfc,
         0x1f, 0xfc,
         0x1f, 0xf8,
         0x0f, 0xf8,
         0x03, 0xf0,
      ])
