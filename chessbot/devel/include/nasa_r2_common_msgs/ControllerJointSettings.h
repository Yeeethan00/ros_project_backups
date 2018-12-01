// Generated by gencpp from file nasa_r2_common_msgs/ControllerJointSettings.msg
// DO NOT EDIT!


#ifndef NASA_R2_COMMON_MSGS_MESSAGE_CONTROLLERJOINTSETTINGS_H
#define NASA_R2_COMMON_MSGS_MESSAGE_CONTROLLERJOINTSETTINGS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace nasa_r2_common_msgs
{
template <class ContainerAllocator>
struct ControllerJointSettings_
{
  typedef ControllerJointSettings_<ContainerAllocator> Type;

  ControllerJointSettings_()
    : joint_names()
    , jointVelocityLimits()
    , jointAccelerationLimits()  {
    }
  ControllerJointSettings_(const ContainerAllocator& _alloc)
    : joint_names(_alloc)
    , jointVelocityLimits(_alloc)
    , jointAccelerationLimits(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _joint_names_type;
  _joint_names_type joint_names;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _jointVelocityLimits_type;
  _jointVelocityLimits_type jointVelocityLimits;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _jointAccelerationLimits_type;
  _jointAccelerationLimits_type jointAccelerationLimits;





  typedef boost::shared_ptr< ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> const> ConstPtr;

}; // struct ControllerJointSettings_

typedef ::nasa_r2_common_msgs::ControllerJointSettings_<std::allocator<void> > ControllerJointSettings;

typedef boost::shared_ptr< ::nasa_r2_common_msgs::ControllerJointSettings > ControllerJointSettingsPtr;
typedef boost::shared_ptr< ::nasa_r2_common_msgs::ControllerJointSettings const> ControllerJointSettingsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace nasa_r2_common_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'nasa_r2_common_msgs': ['/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2855ccfdd34b7753606f0f176bc1bb94";
  }

  static const char* value(const ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2855ccfdd34b7753ULL;
  static const uint64_t static_value2 = 0x606f0f176bc1bb94ULL;
};

template<class ContainerAllocator>
struct DataType< ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nasa_r2_common_msgs/ControllerJointSettings";
  }

  static const char* value(const ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] joint_names\n\
float64[] jointVelocityLimits\n\
float64[] jointAccelerationLimits\n\
";
  }

  static const char* value(const ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_names);
      stream.next(m.jointVelocityLimits);
      stream.next(m.jointAccelerationLimits);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ControllerJointSettings_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nasa_r2_common_msgs::ControllerJointSettings_<ContainerAllocator>& v)
  {
    s << indent << "joint_names[]" << std::endl;
    for (size_t i = 0; i < v.joint_names.size(); ++i)
    {
      s << indent << "  joint_names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.joint_names[i]);
    }
    s << indent << "jointVelocityLimits[]" << std::endl;
    for (size_t i = 0; i < v.jointVelocityLimits.size(); ++i)
    {
      s << indent << "  jointVelocityLimits[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.jointVelocityLimits[i]);
    }
    s << indent << "jointAccelerationLimits[]" << std::endl;
    for (size_t i = 0; i < v.jointAccelerationLimits.size(); ++i)
    {
      s << indent << "  jointAccelerationLimits[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.jointAccelerationLimits[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NASA_R2_COMMON_MSGS_MESSAGE_CONTROLLERJOINTSETTINGS_H
