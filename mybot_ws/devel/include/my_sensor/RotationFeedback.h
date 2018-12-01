// Generated by gencpp from file my_sensor/RotationFeedback.msg
// DO NOT EDIT!


#ifndef MY_SENSOR_MESSAGE_ROTATIONFEEDBACK_H
#define MY_SENSOR_MESSAGE_ROTATIONFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_sensor
{
template <class ContainerAllocator>
struct RotationFeedback_
{
  typedef RotationFeedback_<ContainerAllocator> Type;

  RotationFeedback_()
    : current_orientation(0.0)  {
    }
  RotationFeedback_(const ContainerAllocator& _alloc)
    : current_orientation(0.0)  {
  (void)_alloc;
    }



   typedef float _current_orientation_type;
  _current_orientation_type current_orientation;





  typedef boost::shared_ptr< ::my_sensor::RotationFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_sensor::RotationFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct RotationFeedback_

typedef ::my_sensor::RotationFeedback_<std::allocator<void> > RotationFeedback;

typedef boost::shared_ptr< ::my_sensor::RotationFeedback > RotationFeedbackPtr;
typedef boost::shared_ptr< ::my_sensor::RotationFeedback const> RotationFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_sensor::RotationFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_sensor::RotationFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace my_sensor

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'my_sensor': ['/home/mypc/ROSex/mybot_ws/devel/share/my_sensor/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::my_sensor::RotationFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_sensor::RotationFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_sensor::RotationFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_sensor::RotationFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_sensor::RotationFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_sensor::RotationFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_sensor::RotationFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd917ecfbe26055b91a2641b9ec145ff";
  }

  static const char* value(const ::my_sensor::RotationFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbd917ecfbe26055bULL;
  static const uint64_t static_value2 = 0x91a2641b9ec145ffULL;
};

template<class ContainerAllocator>
struct DataType< ::my_sensor::RotationFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_sensor/RotationFeedback";
  }

  static const char* value(const ::my_sensor::RotationFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_sensor::RotationFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
float32 current_orientation\n\
\n\
";
  }

  static const char* value(const ::my_sensor::RotationFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_sensor::RotationFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_orientation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RotationFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_sensor::RotationFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_sensor::RotationFeedback_<ContainerAllocator>& v)
  {
    s << indent << "current_orientation: ";
    Printer<float>::stream(s, indent + "  ", v.current_orientation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_SENSOR_MESSAGE_ROTATIONFEEDBACK_H