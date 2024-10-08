from game_types import level_t

level_classic_one = level_t (0x0d, 0x04, 0x0c, 0x0a, 0x02,
      # platform y,x - start and x end
      (
         (0x00, 0x00, 0x13),
         (0x04, 0x01, 0x12),
         (0x08, 0x02, 0x08),
         (0x08, 0x0e, 0x12),
         (0x09, 0x09, 0x0a),
         (0x0a, 0x0b, 0x0c),
         (0x0b, 0x0d, 0x0e),
         (0x0c, 0x0f, 0x10),
         (0x0c, 0x03, 0x07),
         (0x0d, 0x09, 0x0b),
         (0x10, 0x05, 0x09),
         (0x10, 0x0b, 0x10),
         (0x10, 0x12, 0x13)
      ),
      # ladder x,y - start and y end
      (
         (0x03, 0x05, 0x0a),
         (0x07, 0x01, 0x12),
         (0x0b, 0x01, 0x06),
         (0x10, 0x01, 0x06)
      ),
      # elevator
      None,
      # eggs
      (
         (0x04, 0x01),
         (0x01, 0x05),
         (0x0d, 0x05),
         (0x12, 0x05),
         (0x02, 0x09),
         (0x0a, 0x0a),
         (0x11, 0x09),
         (0x04, 0x0d),
         (0x0a, 0x0e),
         (0x06, 0x11),
         (0x0d, 0x11),
         (0x13, 0x11)
      ),
      # seeds
      (
         (0x02, 0x01),
         (0x0d, 0x01),
         (0x05, 0x05),
         (0x0e, 0x05),
         (0x05, 0x09),
         (0x0f, 0x09),
         (0x10, 0x0d),
         (0x0b, 0x0e),
         (0x09, 0x11),
         (0x0e, 0x11)
      ),
      # ducks
      (
         (0x05, 0x0d),
         (0x08, 0x11),
         (0x04, 0x09),
         (0x06, 0x05),
         (0x0c, 0x01)
      )
)

level_classic_two = level_t (0x0d, 0x08, 0x0c, 0x07, 0x03,
      # platform y,x - start and x end
      (
         (0x00, 0x00, 0x03),
         (0x00, 0x05, 0x13),
         (0x04, 0x00, 0x06),
         (0x04, 0x08, 0x0a),
         (0x04, 0x0c, 0x0e),
         (0x04, 0x10, 0x13),
         (0x08, 0x00, 0x03),
         (0x08, 0x05, 0x0e),
         (0x08, 0x10, 0x13),
         (0x0c, 0x00, 0x0a),
         (0x0c, 0x0c, 0x13),
         (0x10, 0x04, 0x0a),
         (0x10, 0x0c, 0x13)
      ),
      # ladder x,y - start and y end
      (
         (0x02, 0x01, 0x0e),
         (0x04, 0x0d, 0x12),
         (0x06, 0x05, 0x0e),
         (0x09, 0x01, 0x06),
         (0x09, 0x09, 0x12),
         (0x0d, 0x09, 0x0e),
         (0x11, 0x01, 0x0a),
         (0x11, 0x0d, 0x12)
      ),
      # elevator
      None,
      # eggs
      (
         (0x05, 0x01),
         (0x0c, 0x01),
         (0x00, 0x05),
         (0x04, 0x05),
         (0x0d, 0x05),
         (0x00, 0x09),
         (0x07, 0x09),
         (0x13, 0x09),
         (0x07, 0x0d),
         (0x07, 0x11),
         (0x0f, 0x11),
         (0x13, 0x11)
      ),
      # seeds
      (
         (0x00, 0x01),
         (0x03, 0x01),
         (0x0f, 0x01),
         (0x10, 0x05),
         (0x00, 0x0d),
         (0x0a, 0x0d),
         (0x0c, 0x11)
      ),
      # ducks
      (
         (0x06, 0x11),
         (0x01, 0x01),
         (0x12, 0x09),
         (0x0b, 0x09),
         (0x0d, 0x11)
      )
)

level_classic_three = level_t (0x18, 0x07, 0x0c, 0x0a, 0x03,
      # platform y,x - start and x end
      (
         (0x00, 0x00, 0x02),
         (0x01, 0x03, 0x04),
         (0x00, 0x07, 0x09),
         (0x00, 0x0b, 0x13),
         (0x03, 0x10, 0x12),
         (0x07, 0x00, 0x04),
         (0x0c, 0x00, 0x03),
         (0x0f, 0x03, 0x04),
         (0x04, 0x07, 0x0a),
         (0x04, 0x0c, 0x0c),
         (0x05, 0x0e, 0x0e),
         (0x06, 0x0f, 0x0f),
         (0x07, 0x11, 0x11),
         (0x08, 0x12, 0x13),
         (0x09, 0x0c, 0x0d),
         (0x09, 0x0f, 0x0f),
         (0x0b, 0x12, 0x13),
         (0x0c, 0x11, 0x11),
         (0x0d, 0x0f, 0x0f),
         (0x0e, 0x0c, 0x0d),
         (0x0f, 0x07, 0x0b),
         (0x11, 0x0d, 0x0f),
         (0x10, 0x10, 0x10),
         (0x10, 0x12, 0x13)
      ),
      # ladder x,y - start and y end
      (
         (0x01, 0x01, 0x09),
         (0x03, 0x08, 0x11),
         (0x08, 0x05, 0x11),
         (0x0a, 0x05, 0x11),
         (0x0d, 0x0f, 0x13),
         (0x12, 0x01, 0x05),
         (0x13, 0x09, 0x0d)
      ),
      # elevator
      (
         (8 * 0x05, 0x04),
         (8 * 0x05, 0x042)
      ),
      # eggs
      (
         (0x04, 0x02),
         (0x0f, 0x01),
         (0x10, 0x04),
         (0x04, 0x08),
         (0x04, 0x10),
         (0x09, 0x05),
         (0x0f, 0x07),
         (0x0f, 0x0a),
         (0x01, 0x0d),
         (0x11, 0x0d),
         (0x13, 0x0e),
         (0x13, 0x11)
      ),
      # seeds
      (
         (0x02, 0x01),
         (0x02, 0x08),
         (0x07, 0x05),
         (0x07, 0x10),
         (0x00, 0x0d),
         (0x0d, 0x01),
         (0x0c, 0x0f),
         (0x0f, 0x0e),
         (0x0d, 0x0a),
         (0x12, 0x11)
      ),
      # ducks
      (
         (0x02, 0x0d),
         (0x09, 0x10),
         (0x11, 0x04),
         (0x00, 0x01),
         (0x08, 0x05)
      )
)

level_classic_four = level_t (0x1a, 0x05, 0x0c, 0x06, 0x04,
      # platform y,x - start and x end
      (
         (0x00, 0x00, 0x04),
         (0x00, 0x06, 0x0a),
         (0x00, 0x0d, 0x13),
         (0x04, 0x00, 0x04),
         (0x04, 0x07, 0x0a),
         (0x04, 0x0d, 0x11),
         (0x03, 0x13, 0x13),
         (0x08, 0x00, 0x01),
         (0x09, 0x03, 0x03),
         (0x0a, 0x05, 0x05),
         (0x0b, 0x07, 0x08),
         (0x08, 0x07, 0x08),
         (0x08, 0x0d, 0x10),
         (0x07, 0x12, 0x13),
         (0x0c, 0x08, 0x0a),
         (0x0c, 0x00, 0x00),
         (0x0d, 0x02, 0x02),
         (0x0e, 0x03, 0x03),
         (0x0f, 0x04, 0x04),
         (0x10, 0x05, 0x05),
         (0x10, 0x07, 0x0a),
         (0x0c, 0x0d, 0x0e),
         (0x0c, 0x10, 0x10),
         (0x0c, 0x12, 0x13),
         (0x10, 0x0d, 0x0f),
         (0x10, 0x11, 0x13)
      ),
      # ladder x,y - start and y end
      (
         (0x03, 0x01, 0x06),
         (0x08, 0x01, 0x12),
         (0x0e, 0x09, 0x12),
         (0x0f, 0x01, 0x06),
         (0x13, 0x0c, 0x12)
      ),
      # elevator
      (
         (8 * 0x0b, 0x04),
         (8 * 0x0b, 0x042)
      ),
      # eggs
      (
         (0x00, 0x01),
         (0x00, 0x09),
         (0x00, 0x0d),
         (0x07, 0x05),
         (0x09, 0x0d),
         (0x0d, 0x01),
         (0x10, 0x05),
         (0x0d, 0x09),
         (0x13, 0x08),
         (0x11, 0x0c),
         (0x10, 0x10),
         (0x10, 0x13)
      ),
      # seeds
      (
         (0x00, 0x05),
         (0x0a, 0x01),
         (0x12, 0x01),
         (0x05, 0x0b),
         (0x09, 0x11),
         (0x0d, 0x11)
      ),
      # ducks
      (
         (0x0a, 0x11),
         (0x11, 0x11),
         (0x11, 0x01),
         (0x04, 0x01),
         (0x0a, 0x05)
      )
)

level_classic_five = level_t (0x11, 0x09, 0x0c, 0x0d, 0x04,
      # platform y,x - start and x end
      (
         (0x00, 0x00, 0x01),
         (0x00, 0x03, 0x0b),
         (0x00, 0x0d, 0x0f),
         (0x00, 0x12, 0x13),
         (0x04, 0x00, 0x05),
         (0x04, 0x09, 0x0c),
         (0x04, 0x0e, 0x0f),
         (0x08, 0x00, 0x05),
         (0x08, 0x0a, 0x0f),
         (0x08, 0x13, 0x13),
         (0x0c, 0x00, 0x05),
         (0x10, 0x03, 0x07),
         (0x0f, 0x09, 0x09),
         (0x0e, 0x0b, 0x0d),
         (0x0d, 0x0e, 0x0e),
         (0x11, 0x0c, 0x0f),
         (0x10, 0x12, 0x13)
      ),
      # ladder x,y - start and y end
      (
         (0x03, 0x01, 0x06),
         (0x02, 0x09, 0x0e),
         (0x04, 0x09, 0x12),
         (0x07, 0x01, 0x05),
         (0x07, 0x08, 0x0d),
         (0x0a, 0x01, 0x06),
         (0x0c, 0x05, 0x0a),
         (0x0c, 0x0f, 0x13),
         (0x0e, 0x01, 0x06)
      ),
      # elevator
      (
         (8 * 0x10, 0x04),
         (8 * 0x10, 0x042)
      ),
      # eggs
      (
         (0x00, 0x01),
         (0x00, 0x05),
         (0x00, 0x09),
         (0x00, 0x0d),
         (0x05, 0x05),
         (0x05, 0x11),
         (0x09, 0x08),
         (0x0d, 0x04),
         (0x0b, 0x0f),
         (0x0d, 0x12),
         (0x13, 0x09),
         (0x13, 0x11)
      ),
      # seeds
      (
         (0x04, 0x01),
         (0x05, 0x01),
         (0x06, 0x01),
         (0x0d, 0x01),
         (0x0f, 0x01),
         (0x12, 0x01),
         (0x0a, 0x09),
         (0x0f, 0x09),
         (0x03, 0x11),
         (0x06, 0x11),
         (0x07, 0x11),
         (0x0f, 0x12),
         (0x12, 0x11)
      ),
      # ducks
      (
         (0x01, 0x05),
         (0x03, 0x09),
         (0x01, 0x0d),
         (0x0e, 0x09),
         (0x0f, 0x05)
      )
)

level_classic_six = level_t (0x10, 0x06, 0x0c, 0x09, 0x04,
      # platform y,x - start and x end
      (
         (0x00, 0x00, 0x02),
         (0x00, 0x06, 0x08),
         (0x00, 0x0b, 0x0e),
         (0x04, 0x00, 0x01),
         (0x04, 0x03, 0x05),
         (0x04, 0x0c, 0x0e),
         (0x08, 0x02, 0x07),
         (0x08, 0x0c, 0x11),
         (0x07, 0x11, 0x13),
         (0x0c, 0x00, 0x05),
         (0x0d, 0x10, 0x13),
         (0x10, 0x06, 0x06),
         (0x10, 0x08, 0x08),
         (0x10, 0x0c, 0x11),
         (0x11, 0x11, 0x13),
         (0x01, 0x11, 0x11)
      ),
      # ladder x,y - start and y end
      (
         (0x00, 0x01, 0x06),
         (0x04, 0x03, 0x0e),
         (0x0e, 0x05, 0x0a),
         (0x0e, 0x0f, 0x13),
         (0x11, 0x01, 0x0a),
         (0x11, 0x0d, 0x13)
      ),
      # elevator
      (
         (8 * 0x09, 0x04),
         (8 * 0x09, 0x042)
      ),
      # eggs
      (
         (0x02, 0x01),
         (0x10, 0x01),
         (0x05, 0x05),
         (0x0c, 0x05),
         (0x0c, 0x09),
         (0x10, 0x09),
         (0x07, 0x0d),
         (0x03, 0x10),
         (0x06, 0x11),
         (0x0c, 0x11),
         (0x13, 0x0e),
         (0x13, 0x12)
      ),
      # seeds
      (
         (0x0b, 0x01),
         (0x0c, 0x01),
         (0x0d, 0x01),
         (0x0e, 0x01),
         (0x00, 0x0d),
         (0x02, 0x0d),
         (0x03, 0x0d),
         (0x07, 0x09),
         (0x13, 0x08)
      ),
      # ducks
      (
         (0x01, 0x0d),
         (0x01, 0x01),
         (0x12, 0x0e),
         (0x0d, 0x05),
         (0x12, 0x08)
      )
)

level_classic_seven = level_t (0x17, 0x07, 0x0c, 0x04, 0x03,
      # platform y,x - start and x end
      (
         (0x10, 0x0b, 0x10),
         (0x0c, 0x00, 0x04),
         (0x0c, 0x06, 0x07),
         (0x08, 0x00, 0x02),
         (0x04, 0x01, 0x03),
         (0x03, 0x00, 0x01),
         (0x00, 0x03, 0x04),
         (0x01, 0x05, 0x06),
         (0x00, 0x07, 0x08),
         (0x01, 0x09, 0x09),
         (0x02, 0x09, 0x09),
         (0x02, 0x0c, 0x0c),
         (0x05, 0x05, 0x08),
         (0x06, 0x05, 0x05),
         (0x07, 0x05, 0x05),
         (0x08, 0x05, 0x05),
         (0x09, 0x05, 0x05),
         (0x08, 0x08, 0x08),
         (0x09, 0x08, 0x08),
         (0x0b, 0x0c, 0x0f),
         (0x08, 0x0a, 0x0b),
         (0x06, 0x0e, 0x10),
         (0x01, 0x0f, 0x10)
      ),
      # ladder x,y - start and y end
      (
         (0x01, 0x01, 0x0e),
         (0x03, 0x01, 0x06),
         (0x05, 0x10, 0x13),
         (0x07, 0x10, 0x13),
         (0x09, 0x10, 0x13),
         (0x0d, 0x0c, 0x12),
         (0x0f, 0x07, 0x0d)
      ),
      # elevator
      (
         (8 * 0x12, 0x04),
         (8 * 0x12, 0x042)
      ),
      # eggs
      (
         (0x06, 0x12),
         (0x08, 0x12),
         (0x0a, 0x12),
         (0x0f, 0x11),
         (0x07, 0x0d),
         (0x02, 0x02),
         (0x07, 0x06),
         (0x0b, 0x09),
         (0x10, 0x0b),
         (0x10, 0x07),
         (0x0c, 0x03),
         (0x11, 0x01)
      ),
      # seeds
      (
         (0x02, 0x05),
         (0x03, 0x0d),
         (0x08, 0x06),
         (0x0c, 0x11)
      ),
      # ducks
      (
         (0x0d, 0x11),
         (0x01, 0x0d),
         (0x0e, 0x07),
         (0x00, 0x04),
         (0x02, 0x09)
      )
)

level_classic_eight = level_t (0x0f, 0x06, 0x0c, 0x10, 0x03,
      # platform y,x - start and x end
      (
         (0x00, 0x00, 0x13),
         (0x04, 0x02, 0x04),
         (0x04, 0x07, 0x0d),
         (0x04, 0x10, 0x12),
         (0x08, 0x02, 0x05),
         (0x08, 0x08, 0x0c),
         (0x08, 0x0f, 0x12),
         (0x0c, 0x03, 0x06),
         (0x0c, 0x09, 0x0b),
         (0x0c, 0x0e, 0x11),
         (0x10, 0x03, 0x03),
         (0x10, 0x06, 0x06),
         (0x10, 0x08, 0x0c),
         (0x10, 0x0e, 0x0e),
         (0x10, 0x11, 0x11)
      ),
      # ladder x,y - start and y end
      (
         (0x03, 0x01, 0x06),
         (0x11, 0x01, 0x06),
         (0x0a, 0x05, 0x0a),
         (0x04, 0x09, 0x0e),
         (0x10, 0x09, 0x0e),
         (0x0a, 0x0d, 0x12)
      ),
      # elevator
      None,
      # eggs
      (
         (0x05, 0x04),
         (0x0f, 0x04),
         (0x06, 0x08),
         (0x0e, 0x08),
         (0x08, 0x0c),
         (0x0c, 0x0c),
         (0x05, 0x10),
         (0x0f, 0x10),
         (0x07, 0x10),
         (0x0d, 0x10),
         (0x03, 0x13),
         (0x11, 0x13)
      ),
      # seeds
      (
         (0x01, 0x01),
         (0x02, 0x01),
         (0x04, 0x01),
         (0x05, 0x01),
         (0x06, 0x01),
         (0x08, 0x01),
         (0x09, 0x01),
         (0x0a, 0x01),
         (0x0b, 0x01),
         (0x0c, 0x01),
         (0x0d, 0x01),
         (0x0e, 0x01),
         (0x0f, 0x01),
         (0x10, 0x01),
         (0x12, 0x01),
         (0x13, 0x01)
      ),
      # ducks
      (
         (0x11, 0x01),
         (0x0a, 0x09),
         (0x0a, 0x11),
         (0x03, 0x0d),
         (0x11, 0x0d)
      )
)
