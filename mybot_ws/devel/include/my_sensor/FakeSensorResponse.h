// Generated by gencpp from file my_sensor/FakeSensorResponse.msg
// DO NOT EDIT!


#ifndef MY_SENSOR_MESSAGE_FAKESENSORRESPONSE_H
#define MY_SENSOR_MESSAGE_FAKESENSORRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Quaternion.h>

namespace my_sensor
{
template <class ContainerAllocator>
struct FakeSensorResponse_
{
  typedef FakeSensorResponse_<ContainerAllocator> Type;

  FakeSensorResponse_()
    : quaternion()  {
    }
  FakeSensorResponse_(const ContainerAllocator& _alloc)
    : quaternion(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _quaternion_type;
  _quaternion_type quaternion;





  typedef boost::shared_ptr< ::my_sensor::FakeSensorResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_sensor::FakeSensorResponse_<ContainerAllocator> const> ConstPtr;

}; // struct FakeSensorResponse_

typedef ::my_sensor::FakeSensorResponse_<std::allocator<void> > FakeSensorResponse;

typedef boost::shared_ptr< ::my_sensor::FakeSensorResponse > FakeSensorResponsePtr;
typedef boost::shared_ptr< ::my_sensor::FakeSensorResponse const> FakeSensorResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_sensor::FakeSensorResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_sensor::FakeSensorResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::my_sensor::FakeSensorResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_sensor::FakeSensorResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_sensor::FakeSensorResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_sensor::FakeSensorResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_sensor::FakeSensorResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_sensor::FakeSensorResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_sensor::FakeSensorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c3d2506862045c1ddfbe5c9ef23688f4";
  }

  static const char* value(const ::my_sensor::FakeSensorResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc3d2506862045c1dULL;
  static const uint64_t static_value2 = 0xdfbe5c9ef23688f4ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_sensor::FakeSensorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_sensor/FakeSensorResponse";
  }

  static const char* value(const ::my_sensor::FakeSensorResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_sensor::FakeSensorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Quaternion quaternion\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::my_sensor::FakeSensorResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_sensor::FakeSensorResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.quaternion);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FakeSensorResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_sensor::FakeSensorResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_sensor::FakeSensorResponse_<ContainerAllocator>& v)
  {
    s << indent << "quaternion: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.quaternion);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_SENSOR_MESSAGE_FAKESENSORRESPONSE_H
