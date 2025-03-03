//  SuperTux - Walking Leaf
//  Copyright (C) 2006 Wolfgang Becker <uafr@gmx.de>
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.

#ifndef HEADER_SUPERTUX_BADGUY_SANDBALL_HPP
#define HEADER_SUPERTUX_BADGUY_SANDBALL_HPP

#include "badguy/walking_badguy.hpp"

/** Easy to kill badguy that does not jump down from it's ledge. */
class Sandball final : public WalkingBadguy
{
public:
  Sandball(const ReaderMapping& reader);

  virtual bool is_freezable() const override;

  static std::string class_name() { return "sandball"; }
  virtual std::string get_class_name() const override { return class_name(); }
  static std::string display_name() { return _("Sandball"); }
  virtual std::string get_display_name() const override { return display_name(); }
  virtual GameObjectClasses get_class_types() const override { return WalkingBadguy::get_class_types().add(typeid(Sandball)); }

  GameObjectTypes get_types() const override;
  std::string get_default_sprite_name() const override;

  virtual void active_update(float dt_sec) override;
  virtual bool is_snipable() const override { return true; }

protected:
  virtual bool collision_squished(MovingObject& object) override;

  void on_type_change(int old_type) override;

protected:
  enum Type {
    NORMAL,
    CORRUPTED
  };

private:
  float m_fall_speed;

private:
  Sandball(const Sandball&) = delete;
  Sandball& operator=(const Sandball&) = delete;
};

#endif

/* EOF */
