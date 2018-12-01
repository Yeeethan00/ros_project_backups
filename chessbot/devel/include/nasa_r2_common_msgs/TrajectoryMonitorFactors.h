// Generated by gencpp from file nasa_r2_common_msgs/TrajectoryMonitorFactors.msg
// DO NOT EDIT!


#ifndef NASA_R2_COMMON_MSGS_MESSAGE_TRAJECTORYMONITORFACTORS_H
#define NASA_R2_COMMON_MSGS_MESSAGE_TRAJECTORYMONITORFACTORS_H


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
struct TrajectoryMonitorFactors_
{
  typedef TrajectoryMonitorFactors_<ContainerAllocator> Type;

  TrajectoryMonitorFactors_()
    : joint_names()
    , torqueLimitFactors()
    , distanceFactors()  {
    }
  TrajectoryMonitorFactors_(const ContainerAllocator& _alloc)
    : joint_names(_alloc)
    , torqueLimitFactors(_alloc)
    , distanceFactors(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _joint_names_type;
  _joint_names_type joint_names;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _torqueLimitFactors_type;
  _torqueLimitFactors_type torqueLimitFactors;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _distanceFactors_type;
  _distanceFactors_type distanceFactors;





  typedef boost::shared_ptr< ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> const> ConstPtr;

}; // struct TrajectoryMonitorFactors_

typedef ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<std::allocator<void> > TrajectoryMonitorFactors;

typedef boost::shared_ptr< ::nasa_r2_common_msgs::TrajectoryMonitorFactors > TrajectoryMonitorFactorsPtr;
typedef boost::shared_ptr< ::nasa_r2_common_msgs::TrajectoryMonitorFactors const> TrajectoryMonitorFactorsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2e22743ec8c9b84c75edc4b02a6f32a9";
  }

  static const char* value(const ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2e22743ec8c9b84cULL;
  static const uint64_t static_value2 = 0x75edc4b02a6f32a9ULL;
};

template<class ContainerAllocator>
struct DataType< ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nasa_r2_common_msgs/TrajectoryMonitorFactors";
  }

  static const char* value(const ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] joint_names\n\
float64[] torqueLimitFactors\n\
float64[] distanceFactors\n\
";
  }

  static const char* value(const ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_names);
      stream.next(m.torqueLimitFactors);
      stream.next(m.distanceFactors);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrajectoryMonitorFactors_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nasa_r2_common_msgs::TrajectoryMonitorFactors_<ContainerAllocator>& v)
  {
    s << indent << "joint_names[]" << std::endl;
    for (size_t i = 0; i < v.joint_names.size(); ++i)
    {
      s << indent << "  joint_names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.joint_names[i]);
    }
    s << indent << "torqueLimitFactors[]" << std::endl;
    for (size_t i = 0; i < v.torqueLimitFactors.size(); ++i)
    {
      s << indent << "  torqueLimitFactors[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.torqueLimitFactors[i]);
    }
    s << indent << "distanceFactors[]" << std::endl;
    for (size_t i = 0; i < v.distanceFactors.size(); ++i)
    {
      s << indent << "  distanceFactors[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.distanceFactors[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NASA_R2_COMMON_MSGS_MESSAGE_TRAJECTORYMONITORFACTORS_H
