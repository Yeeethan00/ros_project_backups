//#line 2 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the freenect_camera package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __freenect_camera__FREENECTCONFIG_H__
#define __freenect_camera__FREENECTCONFIG_H__

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace freenect_camera
{
  class FreenectConfigStatics;

  class FreenectConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l,
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }

      virtual void clamp(FreenectConfig &config, const FreenectConfig &max, const FreenectConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const FreenectConfig &config1, const FreenectConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, FreenectConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const FreenectConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, FreenectConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const FreenectConfig &config) const = 0;
      virtual void getValue(const FreenectConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;

    template <class T>
    class ParamDescription : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level,
          std::string a_description, std::string a_edit_method, T FreenectConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T (FreenectConfig::* field);

      virtual void clamp(FreenectConfig &config, const FreenectConfig &max, const FreenectConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const FreenectConfig &config1, const FreenectConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, FreenectConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const FreenectConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, FreenectConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const FreenectConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const FreenectConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, FreenectConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    template<class T, class PT>
    class GroupDescription : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, FreenectConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T (PT::* field);
      std::vector<FreenectConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(FreenectConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("image_mode"==(*_i)->name){image_mode = boost::any_cast<int>(val);}
        if("depth_mode"==(*_i)->name){depth_mode = boost::any_cast<int>(val);}
        if("depth_registration"==(*_i)->name){depth_registration = boost::any_cast<bool>(val);}
        if("data_skip"==(*_i)->name){data_skip = boost::any_cast<int>(val);}
        if("depth_time_offset"==(*_i)->name){depth_time_offset = boost::any_cast<double>(val);}
        if("image_time_offset"==(*_i)->name){image_time_offset = boost::any_cast<double>(val);}
        if("depth_ir_offset_x"==(*_i)->name){depth_ir_offset_x = boost::any_cast<double>(val);}
        if("depth_ir_offset_y"==(*_i)->name){depth_ir_offset_y = boost::any_cast<double>(val);}
        if("z_offset_mm"==(*_i)->name){z_offset_mm = boost::any_cast<int>(val);}
      }
    }

    int image_mode;
int depth_mode;
bool depth_registration;
int data_skip;
double depth_time_offset;
double image_time_offset;
double depth_ir_offset_x;
double depth_ir_offset_y;
int z_offset_mm;

    bool state;
    std::string name;

    
}groups;



//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int image_mode;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int depth_mode;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool depth_registration;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int data_skip;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double depth_time_offset;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double image_time_offset;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double depth_ir_offset_x;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double depth_ir_offset_y;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int z_offset_mm;
//#line 218 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("FreenectConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }

    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }

    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const FreenectConfig &__max__ = __getMax__();
      const FreenectConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const FreenectConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const FreenectConfig &__getDefault__();
    static const FreenectConfig &__getMax__();
    static const FreenectConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const FreenectConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void FreenectConfig::ParamDescription<std::string>::clamp(FreenectConfig &config, const FreenectConfig &max, const FreenectConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class FreenectConfigStatics
  {
    friend class FreenectConfig;

    FreenectConfigStatics()
    {
FreenectConfig::GroupDescription<FreenectConfig::DEFAULT, FreenectConfig> Default("Default", "", 0, 0, true, &FreenectConfig::groups);
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.image_mode = 1;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.image_mode = 2;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.image_mode = 2;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<int>("image_mode", "int", 0, "Image output mode", "{'enum_description': 'output mode', 'enum': [{'srcline': 8, 'description': '1280x1024', 'srcfile': '/home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/freenect_stack/freenect_camera/cfg/Freenect.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'SXGA'}, {'srcline': 9, 'description': '640x480', 'srcfile': '/home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/freenect_stack/freenect_camera/cfg/Freenect.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'VGA'}]}", &FreenectConfig::image_mode)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<int>("image_mode", "int", 0, "Image output mode", "{'enum_description': 'output mode', 'enum': [{'srcline': 8, 'description': '1280x1024', 'srcfile': '/home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/freenect_stack/freenect_camera/cfg/Freenect.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'SXGA'}, {'srcline': 9, 'description': '640x480', 'srcfile': '/home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/freenect_stack/freenect_camera/cfg/Freenect.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'VGA'}]}", &FreenectConfig::image_mode)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.depth_mode = 1;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.depth_mode = 2;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.depth_mode = 2;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<int>("depth_mode", "int", 0, "Depth output mode", "{'enum_description': 'output mode', 'enum': [{'srcline': 8, 'description': '1280x1024', 'srcfile': '/home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/freenect_stack/freenect_camera/cfg/Freenect.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'SXGA'}, {'srcline': 9, 'description': '640x480', 'srcfile': '/home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/freenect_stack/freenect_camera/cfg/Freenect.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'VGA'}]}", &FreenectConfig::depth_mode)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<int>("depth_mode", "int", 0, "Depth output mode", "{'enum_description': 'output mode', 'enum': [{'srcline': 8, 'description': '1280x1024', 'srcfile': '/home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/freenect_stack/freenect_camera/cfg/Freenect.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'SXGA'}, {'srcline': 9, 'description': '640x480', 'srcfile': '/home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/freenect_stack/freenect_camera/cfg/Freenect.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'VGA'}]}", &FreenectConfig::depth_mode)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.depth_registration = 0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.depth_registration = 1;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.depth_registration = 1;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<bool>("depth_registration", "bool", 0, "Depth data registration", "", &FreenectConfig::depth_registration)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<bool>("depth_registration", "bool", 0, "Depth data registration", "", &FreenectConfig::depth_registration)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.data_skip = 0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.data_skip = 10;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.data_skip = 0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<int>("data_skip", "int", 0, "Skip N images for every image published (rgb/depth/depth_registered/ir)", "", &FreenectConfig::data_skip)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<int>("data_skip", "int", 0, "Skip N images for every image published (rgb/depth/depth_registered/ir)", "", &FreenectConfig::data_skip)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.depth_time_offset = -1.0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.depth_time_offset = 1.0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.depth_time_offset = 0.0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<double>("depth_time_offset", "double", 0, "depth image time offset in seconds", "", &FreenectConfig::depth_time_offset)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<double>("depth_time_offset", "double", 0, "depth image time offset in seconds", "", &FreenectConfig::depth_time_offset)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.image_time_offset = -1.0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.image_time_offset = 1.0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.image_time_offset = 0.0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<double>("image_time_offset", "double", 0, "image time offset in seconds", "", &FreenectConfig::image_time_offset)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<double>("image_time_offset", "double", 0, "image time offset in seconds", "", &FreenectConfig::image_time_offset)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.depth_ir_offset_x = -10.0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.depth_ir_offset_x = 10.0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.depth_ir_offset_x = 5.0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<double>("depth_ir_offset_x", "double", 0, "X offset between IR and depth images", "", &FreenectConfig::depth_ir_offset_x)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<double>("depth_ir_offset_x", "double", 0, "X offset between IR and depth images", "", &FreenectConfig::depth_ir_offset_x)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.depth_ir_offset_y = -10.0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.depth_ir_offset_y = 10.0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.depth_ir_offset_y = 4.0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<double>("depth_ir_offset_y", "double", 0, "Y offset between IR and depth images", "", &FreenectConfig::depth_ir_offset_y)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<double>("depth_ir_offset_y", "double", 0, "Y offset between IR and depth images", "", &FreenectConfig::depth_ir_offset_y)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.z_offset_mm = -50;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.z_offset_mm = 50;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.z_offset_mm = 0;
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<int>("z_offset_mm", "int", 0, "Z offset in mm", "", &FreenectConfig::z_offset_mm)));
//#line 292 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(FreenectConfig::AbstractParamDescriptionConstPtr(new FreenectConfig::ParamDescription<int>("z_offset_mm", "int", 0, "Z offset in mm", "", &FreenectConfig::z_offset_mm)));
//#line 245 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 245 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(FreenectConfig::AbstractGroupDescriptionConstPtr(new FreenectConfig::GroupDescription<FreenectConfig::DEFAULT, FreenectConfig>(Default)));
//#line 356 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<FreenectConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<FreenectConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<FreenectConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    FreenectConfig __max__;
    FreenectConfig __min__;
    FreenectConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const FreenectConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static FreenectConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &FreenectConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const FreenectConfig &FreenectConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const FreenectConfig &FreenectConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const FreenectConfig &FreenectConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<FreenectConfig::AbstractParamDescriptionConstPtr> &FreenectConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<FreenectConfig::AbstractGroupDescriptionConstPtr> &FreenectConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const FreenectConfigStatics *FreenectConfig::__get_statics__()
  {
    const static FreenectConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = FreenectConfigStatics::get_instance();

    return statics;
  }

//#line 8 "/home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/freenect_stack/freenect_camera/cfg/Freenect.cfg"
      const int Freenect_SXGA = 1;
//#line 9 "/home/mypc/ROSex/y-robot_ws/src/yrobot_drivers_bringup/freenect_stack/freenect_camera/cfg/Freenect.cfg"
      const int Freenect_VGA = 2;
}

#endif // __FREENECTRECONFIGURATOR_H__
