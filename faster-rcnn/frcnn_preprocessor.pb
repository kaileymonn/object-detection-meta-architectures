
`
image_tensorPlaceholder*
dtype0*6
shape-:+���������������������������
7
	ToFloat_3Castimage_tensor*

DstT0*

SrcT0
C
Preprocessor/map/ShapeShape	ToFloat_3*
out_type0*
T0
R
$Preprocessor/map/strided_slice/stackConst*
valueB: *
dtype0
T
&Preprocessor/map/strided_slice/stack_1Const*
valueB:*
dtype0
T
&Preprocessor/map/strided_slice/stack_2Const*
valueB:*
dtype0
�
Preprocessor/map/strided_sliceStridedSlicePreprocessor/map/Shape$Preprocessor/map/strided_slice/stack&Preprocessor/map/strided_slice/stack_1&Preprocessor/map/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
ellipsis_mask 
�
Preprocessor/map/TensorArrayTensorArrayV3Preprocessor/map/strided_slice*
dynamic_size( *
identical_element_shapes(*
element_shape:*
dtype0*
tensor_array_name *
clear_after_read(
V
)Preprocessor/map/TensorArrayUnstack/ShapeShape	ToFloat_3*
out_type0*
T0
e
7Preprocessor/map/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0
g
9Preprocessor/map/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0
g
9Preprocessor/map/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0
�
1Preprocessor/map/TensorArrayUnstack/strided_sliceStridedSlice)Preprocessor/map/TensorArrayUnstack/Shape7Preprocessor/map/TensorArrayUnstack/strided_slice/stack9Preprocessor/map/TensorArrayUnstack/strided_slice/stack_19Preprocessor/map/TensorArrayUnstack/strided_slice/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*

begin_mask *
new_axis_mask *
ellipsis_mask 
Y
/Preprocessor/map/TensorArrayUnstack/range/startConst*
value	B : *
dtype0
Y
/Preprocessor/map/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0
�
)Preprocessor/map/TensorArrayUnstack/rangeRange/Preprocessor/map/TensorArrayUnstack/range/start1Preprocessor/map/TensorArrayUnstack/strided_slice/Preprocessor/map/TensorArrayUnstack/range/delta*

Tidx0
�
KPreprocessor/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3Preprocessor/map/TensorArray)Preprocessor/map/TensorArrayUnstack/range	ToFloat_3Preprocessor/map/TensorArray:1*
T0*
_class
loc:@ToFloat_3
@
Preprocessor/map/ConstConst*
value	B : *
dtype0
�
Preprocessor/map/TensorArray_1TensorArrayV3Preprocessor/map/strided_slice*
dynamic_size( *
identical_element_shapes(*
element_shape:*
dtype0*
clear_after_read(*
tensor_array_name 
�
Preprocessor/map/TensorArray_2TensorArrayV3Preprocessor/map/strided_slice*
dynamic_size( *
identical_element_shapes(*
element_shape:*
dtype0*
tensor_array_name *
clear_after_read(
�
Preprocessor/map/while/EnterEnterPreprocessor/map/Const*
parallel_iterations*
T0*4

frame_name&$Preprocessor/map/while/while_context*
is_constant( 
�
Preprocessor/map/while/Enter_1Enter Preprocessor/map/TensorArray_1:1*
parallel_iterations*
T0*4

frame_name&$Preprocessor/map/while/while_context*
is_constant( 
�
Preprocessor/map/while/Enter_2Enter Preprocessor/map/TensorArray_2:1*
parallel_iterations*
T0*
is_constant( *4

frame_name&$Preprocessor/map/while/while_context
{
Preprocessor/map/while/MergeMergePreprocessor/map/while/Enter$Preprocessor/map/while/NextIteration*
T0*
N
�
Preprocessor/map/while/Merge_1MergePreprocessor/map/while/Enter_1&Preprocessor/map/while/NextIteration_1*
T0*
N
�
Preprocessor/map/while/Merge_2MergePreprocessor/map/while/Enter_2&Preprocessor/map/while/NextIteration_2*
T0*
N
�
!Preprocessor/map/while/Less/EnterEnterPreprocessor/map/strided_slice*
parallel_iterations*
T0*4

frame_name&$Preprocessor/map/while/while_context*
is_constant(
m
Preprocessor/map/while/LessLessPreprocessor/map/while/Merge!Preprocessor/map/while/Less/Enter*
T0
H
Preprocessor/map/while/LoopCondLoopCondPreprocessor/map/while/Less
�
Preprocessor/map/while/SwitchSwitchPreprocessor/map/while/MergePreprocessor/map/while/LoopCond*
T0*/
_class%
#!loc:@Preprocessor/map/while/Merge
�
Preprocessor/map/while/Switch_1SwitchPreprocessor/map/while/Merge_1Preprocessor/map/while/LoopCond*
T0*1
_class'
%#loc:@Preprocessor/map/while/Merge_1
�
Preprocessor/map/while/Switch_2SwitchPreprocessor/map/while/Merge_2Preprocessor/map/while/LoopCond*
T0*1
_class'
%#loc:@Preprocessor/map/while/Merge_2
U
Preprocessor/map/while/IdentityIdentityPreprocessor/map/while/Switch:1*
T0
Y
!Preprocessor/map/while/Identity_1Identity!Preprocessor/map/while/Switch_1:1*
T0
Y
!Preprocessor/map/while/Identity_2Identity!Preprocessor/map/while/Switch_2:1*
T0
�
.Preprocessor/map/while/TensorArrayReadV3/EnterEnterPreprocessor/map/TensorArray*
T0*
parallel_iterations*
is_constant(*4

frame_name&$Preprocessor/map/while/while_context
�
0Preprocessor/map/while/TensorArrayReadV3/Enter_1EnterKPreprocessor/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations*
T0*4

frame_name&$Preprocessor/map/while/while_context*
is_constant(
�
(Preprocessor/map/while/TensorArrayReadV3TensorArrayReadV3.Preprocessor/map/while/TensorArrayReadV3/EnterPreprocessor/map/while/Identity0Preprocessor/map/while/TensorArrayReadV3/Enter_1*
dtype0
v
*Preprocessor/map/while/ResizeToRange/ShapeShape(Preprocessor/map/while/TensorArrayReadV3*
out_type0*
T0
�
8Preprocessor/map/while/ResizeToRange/strided_slice/stackConst ^Preprocessor/map/while/Identity*
valueB: *
dtype0
�
:Preprocessor/map/while/ResizeToRange/strided_slice/stack_1Const ^Preprocessor/map/while/Identity*
valueB:*
dtype0
�
:Preprocessor/map/while/ResizeToRange/strided_slice/stack_2Const ^Preprocessor/map/while/Identity*
valueB:*
dtype0
�
2Preprocessor/map/while/ResizeToRange/strided_sliceStridedSlice*Preprocessor/map/while/ResizeToRange/Shape8Preprocessor/map/while/ResizeToRange/strided_slice/stack:Preprocessor/map/while/ResizeToRange/strided_slice/stack_1:Preprocessor/map/while/ResizeToRange/strided_slice/stack_2*
Index0*
end_mask *
shrink_axis_mask*
T0*

begin_mask *
new_axis_mask *
ellipsis_mask 
�
,Preprocessor/map/while/ResizeToRange/ToFloatCast2Preprocessor/map/while/ResizeToRange/strided_slice*

DstT0*

SrcT0
�
:Preprocessor/map/while/ResizeToRange/strided_slice_1/stackConst ^Preprocessor/map/while/Identity*
valueB:*
dtype0
�
<Preprocessor/map/while/ResizeToRange/strided_slice_1/stack_1Const ^Preprocessor/map/while/Identity*
valueB:*
dtype0
�
<Preprocessor/map/while/ResizeToRange/strided_slice_1/stack_2Const ^Preprocessor/map/while/Identity*
valueB:*
dtype0
�
4Preprocessor/map/while/ResizeToRange/strided_slice_1StridedSlice*Preprocessor/map/while/ResizeToRange/Shape:Preprocessor/map/while/ResizeToRange/strided_slice_1/stack<Preprocessor/map/while/ResizeToRange/strided_slice_1/stack_1<Preprocessor/map/while/ResizeToRange/strided_slice_1/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*
new_axis_mask *

begin_mask *
ellipsis_mask 
�
.Preprocessor/map/while/ResizeToRange/ToFloat_1Cast4Preprocessor/map/while/ResizeToRange/strided_slice_1*

DstT0*

SrcT0
�
:Preprocessor/map/while/ResizeToRange/strided_slice_2/stackConst ^Preprocessor/map/while/Identity*
valueB:*
dtype0
�
<Preprocessor/map/while/ResizeToRange/strided_slice_2/stack_1Const ^Preprocessor/map/while/Identity*
valueB:*
dtype0
�
<Preprocessor/map/while/ResizeToRange/strided_slice_2/stack_2Const ^Preprocessor/map/while/Identity*
valueB:*
dtype0
�
4Preprocessor/map/while/ResizeToRange/strided_slice_2StridedSlice*Preprocessor/map/while/ResizeToRange/Shape:Preprocessor/map/while/ResizeToRange/strided_slice_2/stack<Preprocessor/map/while/ResizeToRange/strided_slice_2/stack_1<Preprocessor/map/while/ResizeToRange/strided_slice_2/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask*
new_axis_mask *

begin_mask *
ellipsis_mask 
�
,Preprocessor/map/while/ResizeToRange/MinimumMinimum,Preprocessor/map/while/ResizeToRange/ToFloat.Preprocessor/map/while/ResizeToRange/ToFloat_1*
T0
y
*Preprocessor/map/while/ResizeToRange/ConstConst ^Preprocessor/map/while/Identity*
valueB
 *  D*
dtype0
�
(Preprocessor/map/while/ResizeToRange/divRealDiv*Preprocessor/map/while/ResizeToRange/Const,Preprocessor/map/while/ResizeToRange/Minimum*
T0
�
(Preprocessor/map/while/ResizeToRange/mulMul,Preprocessor/map/while/ResizeToRange/ToFloat(Preprocessor/map/while/ResizeToRange/div*
T0
f
*Preprocessor/map/while/ResizeToRange/RoundRound(Preprocessor/map/while/ResizeToRange/mul*
T0
x
,Preprocessor/map/while/ResizeToRange/ToInt32Cast*Preprocessor/map/while/ResizeToRange/Round*

DstT0*

SrcT0
�
*Preprocessor/map/while/ResizeToRange/mul_1Mul.Preprocessor/map/while/ResizeToRange/ToFloat_1(Preprocessor/map/while/ResizeToRange/div*
T0
j
,Preprocessor/map/while/ResizeToRange/Round_1Round*Preprocessor/map/while/ResizeToRange/mul_1*
T0
|
.Preprocessor/map/while/ResizeToRange/ToInt32_1Cast,Preprocessor/map/while/ResizeToRange/Round_1*

DstT0*

SrcT0
�
*Preprocessor/map/while/ResizeToRange/stackPack,Preprocessor/map/while/ResizeToRange/ToInt32.Preprocessor/map/while/ResizeToRange/ToInt32_1*

axis *
T0*
N
�
,Preprocessor/map/while/ResizeToRange/MaximumMaximum,Preprocessor/map/while/ResizeToRange/ToFloat.Preprocessor/map/while/ResizeToRange/ToFloat_1*
T0
{
,Preprocessor/map/while/ResizeToRange/Const_1Const ^Preprocessor/map/while/Identity*
valueB
 *  �D*
dtype0
�
*Preprocessor/map/while/ResizeToRange/div_1RealDiv,Preprocessor/map/while/ResizeToRange/Const_1,Preprocessor/map/while/ResizeToRange/Maximum*
T0
�
*Preprocessor/map/while/ResizeToRange/mul_2Mul,Preprocessor/map/while/ResizeToRange/ToFloat*Preprocessor/map/while/ResizeToRange/div_1*
T0
j
,Preprocessor/map/while/ResizeToRange/Round_2Round*Preprocessor/map/while/ResizeToRange/mul_2*
T0
|
.Preprocessor/map/while/ResizeToRange/ToInt32_2Cast,Preprocessor/map/while/ResizeToRange/Round_2*

DstT0*

SrcT0
�
*Preprocessor/map/while/ResizeToRange/mul_3Mul.Preprocessor/map/while/ResizeToRange/ToFloat_1*Preprocessor/map/while/ResizeToRange/div_1*
T0
j
,Preprocessor/map/while/ResizeToRange/Round_3Round*Preprocessor/map/while/ResizeToRange/mul_3*
T0
|
.Preprocessor/map/while/ResizeToRange/ToInt32_3Cast,Preprocessor/map/while/ResizeToRange/Round_3*

DstT0*

SrcT0
�
,Preprocessor/map/while/ResizeToRange/stack_1Pack.Preprocessor/map/while/ResizeToRange/ToInt32_2.Preprocessor/map/while/ResizeToRange/ToInt32_3*

axis *
T0*
N
|
,Preprocessor/map/while/ResizeToRange/Const_2Const ^Preprocessor/map/while/Identity*
valueB: *
dtype0
�
(Preprocessor/map/while/ResizeToRange/MaxMax*Preprocessor/map/while/ResizeToRange/stack,Preprocessor/map/while/ResizeToRange/Const_2*
	keep_dims( *
T0*

Tidx0
x
.Preprocessor/map/while/ResizeToRange/ToFloat_2Cast(Preprocessor/map/while/ResizeToRange/Max*

DstT0*

SrcT0
�
,Preprocessor/map/while/ResizeToRange/GreaterGreater.Preprocessor/map/while/ResizeToRange/ToFloat_2,Preprocessor/map/while/ResizeToRange/Const_1*
T0
t
1Preprocessor/map/while/ResizeToRange/cond/pred_idIdentity,Preprocessor/map/while/ResizeToRange/Greater*
T0

�
2Preprocessor/map/while/ResizeToRange/cond/Switch_1Switch,Preprocessor/map/while/ResizeToRange/stack_11Preprocessor/map/while/ResizeToRange/cond/pred_id*
T0*?
_class5
31loc:@Preprocessor/map/while/ResizeToRange/stack_1
�
2Preprocessor/map/while/ResizeToRange/cond/Switch_2Switch*Preprocessor/map/while/ResizeToRange/stack1Preprocessor/map/while/ResizeToRange/cond/pred_id*
T0*=
_class3
1/loc:@Preprocessor/map/while/ResizeToRange/stack
�
/Preprocessor/map/while/ResizeToRange/cond/MergeMerge2Preprocessor/map/while/ResizeToRange/cond/Switch_24Preprocessor/map/while/ResizeToRange/cond/Switch_1:1*
T0*
N
�
,Preprocessor/map/while/ResizeToRange/unstackUnpack/Preprocessor/map/while/ResizeToRange/cond/Merge*

axis *
T0*	
num
�
,Preprocessor/map/while/ResizeToRange/stack_2Pack,Preprocessor/map/while/ResizeToRange/unstack.Preprocessor/map/while/ResizeToRange/unstack:14Preprocessor/map/while/ResizeToRange/strided_slice_2*

axis *
T0*
N
�
:Preprocessor/map/while/ResizeToRange/strided_slice_3/stackConst ^Preprocessor/map/while/Identity*
valueB: *
dtype0
�
<Preprocessor/map/while/ResizeToRange/strided_slice_3/stack_1Const ^Preprocessor/map/while/Identity*
valueB:
���������*
dtype0
�
<Preprocessor/map/while/ResizeToRange/strided_slice_3/stack_2Const ^Preprocessor/map/while/Identity*
valueB:*
dtype0
�
4Preprocessor/map/while/ResizeToRange/strided_slice_3StridedSlice,Preprocessor/map/while/ResizeToRange/stack_2:Preprocessor/map/while/ResizeToRange/strided_slice_3/stack<Preprocessor/map/while/ResizeToRange/strided_slice_3/stack_1<Preprocessor/map/while/ResizeToRange/strided_slice_3/stack_2*
Index0*
end_mask *
T0*
shrink_axis_mask *

begin_mask*
new_axis_mask *
ellipsis_mask 

3Preprocessor/map/while/ResizeToRange/ExpandDims/dimConst ^Preprocessor/map/while/Identity*
value	B : *
dtype0
�
/Preprocessor/map/while/ResizeToRange/ExpandDims
ExpandDims(Preprocessor/map/while/TensorArrayReadV33Preprocessor/map/while/ResizeToRange/ExpandDims/dim*

Tdim0*
T0
�
3Preprocessor/map/while/ResizeToRange/ResizeBilinearResizeBilinear/Preprocessor/map/while/ResizeToRange/ExpandDims4Preprocessor/map/while/ResizeToRange/strided_slice_3*
T0*
align_corners( 
�
,Preprocessor/map/while/ResizeToRange/SqueezeSqueeze3Preprocessor/map/while/ResizeToRange/ResizeBilinear*
T0*
squeeze_dims
 
�
@Preprocessor/map/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterPreprocessor/map/TensorArray_1*
T0*
parallel_iterations*4

frame_name&$Preprocessor/map/while/while_context*
is_constant(*?
_class5
31loc:@Preprocessor/map/while/ResizeToRange/Squeeze
�
:Preprocessor/map/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3@Preprocessor/map/while/TensorArrayWrite/TensorArrayWriteV3/EnterPreprocessor/map/while/Identity,Preprocessor/map/while/ResizeToRange/Squeeze!Preprocessor/map/while/Identity_1*
T0*?
_class5
31loc:@Preprocessor/map/while/ResizeToRange/Squeeze
�
BPreprocessor/map/while/TensorArrayWrite_1/TensorArrayWriteV3/EnterEnterPreprocessor/map/TensorArray_2*
parallel_iterations*
T0*4

frame_name&$Preprocessor/map/while/while_context*
is_constant(*?
_class5
31loc:@Preprocessor/map/while/ResizeToRange/stack_2
�
<Preprocessor/map/while/TensorArrayWrite_1/TensorArrayWriteV3TensorArrayWriteV3BPreprocessor/map/while/TensorArrayWrite_1/TensorArrayWriteV3/EnterPreprocessor/map/while/Identity,Preprocessor/map/while/ResizeToRange/stack_2!Preprocessor/map/while/Identity_2*
T0*?
_class5
31loc:@Preprocessor/map/while/ResizeToRange/stack_2
h
Preprocessor/map/while/add/yConst ^Preprocessor/map/while/Identity*
value	B :*
dtype0
i
Preprocessor/map/while/addAddPreprocessor/map/while/IdentityPreprocessor/map/while/add/y*
T0
Z
$Preprocessor/map/while/NextIterationNextIterationPreprocessor/map/while/add*
T0
|
&Preprocessor/map/while/NextIteration_1NextIteration:Preprocessor/map/while/TensorArrayWrite/TensorArrayWriteV3*
T0
~
&Preprocessor/map/while/NextIteration_2NextIteration<Preprocessor/map/while/TensorArrayWrite_1/TensorArrayWriteV3*
T0
O
Preprocessor/map/while/Exit_1ExitPreprocessor/map/while/Switch_1*
T0
O
Preprocessor/map/while/Exit_2ExitPreprocessor/map/while/Switch_2*
T0
�
3Preprocessor/map/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3Preprocessor/map/TensorArray_1Preprocessor/map/while/Exit_1*1
_class'
%#loc:@Preprocessor/map/TensorArray_1
�
-Preprocessor/map/TensorArrayStack/range/startConst*
value	B : *
dtype0*1
_class'
%#loc:@Preprocessor/map/TensorArray_1
�
-Preprocessor/map/TensorArrayStack/range/deltaConst*
value	B :*
dtype0*1
_class'
%#loc:@Preprocessor/map/TensorArray_1
�
'Preprocessor/map/TensorArrayStack/rangeRange-Preprocessor/map/TensorArrayStack/range/start3Preprocessor/map/TensorArrayStack/TensorArraySizeV3-Preprocessor/map/TensorArrayStack/range/delta*

Tidx0*1
_class'
%#loc:@Preprocessor/map/TensorArray_1
�
5Preprocessor/map/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3Preprocessor/map/TensorArray_1'Preprocessor/map/TensorArrayStack/rangePreprocessor/map/while/Exit_1*1
element_shape :������������������*
dtype0*1
_class'
%#loc:@Preprocessor/map/TensorArray_1
�
5Preprocessor/map/TensorArrayStack_1/TensorArraySizeV3TensorArraySizeV3Preprocessor/map/TensorArray_2Preprocessor/map/while/Exit_2*1
_class'
%#loc:@Preprocessor/map/TensorArray_2
�
/Preprocessor/map/TensorArrayStack_1/range/startConst*
value	B : *
dtype0*1
_class'
%#loc:@Preprocessor/map/TensorArray_2
�
/Preprocessor/map/TensorArrayStack_1/range/deltaConst*
value	B :*
dtype0*1
_class'
%#loc:@Preprocessor/map/TensorArray_2
�
)Preprocessor/map/TensorArrayStack_1/rangeRange/Preprocessor/map/TensorArrayStack_1/range/start5Preprocessor/map/TensorArrayStack_1/TensorArraySizeV3/Preprocessor/map/TensorArrayStack_1/range/delta*

Tidx0*1
_class'
%#loc:@Preprocessor/map/TensorArray_2
�
7Preprocessor/map/TensorArrayStack_1/TensorArrayGatherV3TensorArrayGatherV3Preprocessor/map/TensorArray_2)Preprocessor/map/TensorArrayStack_1/rangePreprocessor/map/while/Exit_2*
element_shape:*
dtype0*1
_class'
%#loc:@Preprocessor/map/TensorArray_2
?
Preprocessor/mul/xConst*
valueB
 *�� <*
dtype0
k
Preprocessor/mulMulPreprocessor/mul/x5Preprocessor/map/TensorArrayStack/TensorArrayGatherV3*
T0 