// Generated by gencpp from file nasa_r2_common_msgs/ForceControlAxisArray.msg
// DO NOT EDIT!


#ifndef NASA_R2_COMMON_MSGS_MESSAGE_FORCECONTROLAXISARRAY_H
#define NASA_R2_COMMON_MSGS_MESSAGE_FORCECONTROLAXISARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <nasa_r2_common_msgs/ForceControlAxis.h>

namespace nasa_r2_common_msgs
{
template <class ContainerAllocator>
struct ForceControlAxisArray_
{
  typedef ForceControlAxisArray_<ContainerAllocator> Type;

  ForceControlAxisArray_()
    : header()
    , nodes()
    , axes()  {
    }
  ForceControlAxisArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , nodes(_alloc)
    , axes(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _nodes_type;
  _nodes_type nodes;

   typedef std::vector< ::nasa_r2_common_msgs::ForceControlAxis_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::nasa_r2_common_msgs::ForceControlAxis_<ContainerAllocator> >::other >  _axes_type;
  _axes_type axes;





  typedef boost::shared_ptr< ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> const> ConstPtr;

}; // struct ForceControlAxisArray_

typedef ::nasa_r2_common_msgs::ForceControlAxisArray_<std::allocator<void> > ForceControlAxisArray;

typedef boost::shared_ptr< ::nasa_r2_common_msgs::ForceControlAxisArray > ForceControlAxisArrayPtr;
typedef boost::shared_ptr< ::nasa_r2_common_msgs::ForceControlAxisArray const> ForceControlAxisArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace nasa_r2_common_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'nasa_r2_common_msgs': ['/home/mypc/ROSex/chessbot/src/deprecated_nasa_r2_common/nasa_r2_common_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'visualization_msgs': ['/opt/ros/kinetic/share/visualization_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f9bcafba0fd121ec03cb25f3c5a8b045";
  }

  static const char* value(const ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf9bcafba0fd121ecULL;
  static const uint64_t static_value2 = 0x03cb25f3c5a8b045ULL;
};

template<class ContainerAllocator>
struct DataType< ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nasa_r2_common_msgs/ForceControlAxisArray";
  }

  static const char* value(const ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
string[] nodes\n\
ForceControlAxis[] axes\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: nasa_r2_common_msgs/ForceControlAxis\n\
uint8[] axis\n\
float32[] magnitude\n\
\n\
uint8 X       = 0\n\
uint8 Y       = 1\n\
uint8 Z       = 2\n\
uint8 ROLL    = 3\n\
uint8 PITCH   = 4\n\
uint8 YAW     = 5\n\
";
  }

  static const char* value(const ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.nodes);
      stream.next(m.axes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ForceControlAxisArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nasa_r2_common_msgs::ForceControlAxisArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "nodes[]" << std::endl;
    for (size_t i = 0; i < v.nodes.size(); ++i)
    {
      s << indent << "  nodes[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.nodes[i]);
    }
    s << indent << "axes[]" << std::endl;
    for (size_t i = 0; i < v.axes.size(); ++i)
    {
      s << indent << "  axes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::nasa_r2_common_msgs::ForceControlAxis_<ContainerAllocator> >::stream(s, indent + "    ", v.axes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NASA_R2_COMMON_MSGS_MESSAGE_FORCECONTROLAXISARRAY_H