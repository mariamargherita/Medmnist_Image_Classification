╞Ю	
Ь 
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.10.02unknown8фо
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:	*
dtype0
Г
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А	*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	А	*
dtype0
Й
Adam/output_dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/output_dense/bias/v
В
,Adam/output_dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/output_dense/bias/v*
_output_shapes	
:А*
dtype0
Т
Adam/output_dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АHА*+
shared_nameAdam/output_dense/kernel/v
Л
.Adam/output_dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output_dense/kernel/v* 
_output_shapes
:
АHА*
dtype0
А
Adam/conv2D_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2D_2/bias/v
y
(Adam/conv2D_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/bias/v*
_output_shapes
:@*
dtype0
Р
Adam/conv2D_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2D_2/kernel/v
Й
*Adam/conv2D_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/kernel/v*&
_output_shapes
: @*
dtype0
А
Adam/conv2D_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2D_1/bias/v
y
(Adam/conv2D_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_1/bias/v*
_output_shapes
: *
dtype0
Р
Adam/conv2D_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2D_1/kernel/v
Й
*Adam/conv2D_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2D_1/kernel/v*&
_output_shapes
: *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:	*
dtype0
Г
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А	*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	А	*
dtype0
Й
Adam/output_dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameAdam/output_dense/bias/m
В
,Adam/output_dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/output_dense/bias/m*
_output_shapes	
:А*
dtype0
Т
Adam/output_dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АHА*+
shared_nameAdam/output_dense/kernel/m
Л
.Adam/output_dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output_dense/kernel/m* 
_output_shapes
:
АHА*
dtype0
А
Adam/conv2D_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2D_2/bias/m
y
(Adam/conv2D_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/bias/m*
_output_shapes
:@*
dtype0
Р
Adam/conv2D_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2D_2/kernel/m
Й
*Adam/conv2D_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_2/kernel/m*&
_output_shapes
: @*
dtype0
А
Adam/conv2D_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2D_1/bias/m
y
(Adam/conv2D_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_1/bias/m*
_output_shapes
: *
dtype0
Р
Adam/conv2D_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2D_1/kernel/m
Й
*Adam/conv2D_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2D_1/kernel/m*&
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:	*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А	*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	А	*
dtype0
{
output_dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameoutput_dense/bias
t
%output_dense/bias/Read/ReadVariableOpReadVariableOpoutput_dense/bias*
_output_shapes	
:А*
dtype0
Д
output_dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АHА*$
shared_nameoutput_dense/kernel
}
'output_dense/kernel/Read/ReadVariableOpReadVariableOpoutput_dense/kernel* 
_output_shapes
:
АHА*
dtype0
r
conv2D_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2D_2/bias
k
!conv2D_2/bias/Read/ReadVariableOpReadVariableOpconv2D_2/bias*
_output_shapes
:@*
dtype0
В
conv2D_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2D_2/kernel
{
#conv2D_2/kernel/Read/ReadVariableOpReadVariableOpconv2D_2/kernel*&
_output_shapes
: @*
dtype0
r
conv2D_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2D_1/bias
k
!conv2D_1/bias/Read/ReadVariableOpReadVariableOpconv2D_1/bias*
_output_shapes
: *
dtype0
В
conv2D_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2D_1/kernel
{
#conv2D_1/kernel/Read/ReadVariableOpReadVariableOpconv2D_1/kernel*&
_output_shapes
: *
dtype0
О
serving_default_input_layerPlaceholder*/
_output_shapes
:         *
dtype0*$
shape:         
╚
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_layerconv2D_1/kernelconv2D_1/biasconv2D_2/kernelconv2D_2/biasoutput_dense/kerneloutput_dense/biasdense/kernel
dense/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_117786

NoOpNoOp
КL
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*┼K
value╗KB╕K B▒K
й
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
╚
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
 $_jit_compiled_convolution_op*
О
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 
е
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1_random_generator* 
О
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses* 
ж
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias*
е
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
F_random_generator* 
ж
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias*
<
0
1
"2
#3
>4
?5
M6
N7*
<
0
1
"2
#3
>4
?5
M6
N7*
* 
░
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_3* 
6
Xtrace_0
Ytrace_1
Ztrace_2
[trace_3* 
* 
ф
\iter

]beta_1

^beta_2
	_decay
`learning_ratemйmк"mл#mм>mн?mоMmпNm░v▒v▓"v│#v┤>v╡?v╢Mv╖Nv╕*

aserving_default* 

0
1*

0
1*
* 
У
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

gtrace_0* 

htrace_0* 
_Y
VARIABLE_VALUEconv2D_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2D_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

"0
#1*

"0
#1*
* 
У
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

ntrace_0* 

otrace_0* 
_Y
VARIABLE_VALUEconv2D_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2D_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
С
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

utrace_0* 

vtrace_0* 
* 
* 
* 
С
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

|trace_0
}trace_1* 

~trace_0
trace_1* 
* 
* 
* 
* 
Ц
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 

Еtrace_0* 

Жtrace_0* 

>0
?1*

>0
?1*
* 
Ш
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

Мtrace_0* 

Нtrace_0* 
c]
VARIABLE_VALUEoutput_dense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEoutput_dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 

Уtrace_0
Фtrace_1* 

Хtrace_0
Цtrace_1* 
* 

M0
N1*

M0
N1*
* 
Ш
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

Ьtrace_0* 

Эtrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

Ю0
Я1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
а	variables
б	keras_api

вtotal

гcount*
M
д	variables
е	keras_api

жtotal

зcount
и
_fn_kwargs*

в0
г1*

а	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ж0
з1*

д	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
В|
VARIABLE_VALUEAdam/conv2D_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2D_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2D_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2D_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUEAdam/output_dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/output_dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2D_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2D_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/conv2D_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2D_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUEAdam/output_dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/output_dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
л
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2D_1/kernel/Read/ReadVariableOp!conv2D_1/bias/Read/ReadVariableOp#conv2D_2/kernel/Read/ReadVariableOp!conv2D_2/bias/Read/ReadVariableOp'output_dense/kernel/Read/ReadVariableOp%output_dense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv2D_1/kernel/m/Read/ReadVariableOp(Adam/conv2D_1/bias/m/Read/ReadVariableOp*Adam/conv2D_2/kernel/m/Read/ReadVariableOp(Adam/conv2D_2/bias/m/Read/ReadVariableOp.Adam/output_dense/kernel/m/Read/ReadVariableOp,Adam/output_dense/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp*Adam/conv2D_1/kernel/v/Read/ReadVariableOp(Adam/conv2D_1/bias/v/Read/ReadVariableOp*Adam/conv2D_2/kernel/v/Read/ReadVariableOp(Adam/conv2D_2/bias/v/Read/ReadVariableOp.Adam/output_dense/kernel/v/Read/ReadVariableOp,Adam/output_dense/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_118193
Т
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2D_1/kernelconv2D_1/biasconv2D_2/kernelconv2D_2/biasoutput_dense/kerneloutput_dense/biasdense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2D_1/kernel/mAdam/conv2D_1/bias/mAdam/conv2D_2/kernel/mAdam/conv2D_2/bias/mAdam/output_dense/kernel/mAdam/output_dense/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/conv2D_1/kernel/vAdam/conv2D_1/bias/vAdam/conv2D_2/kernel/vAdam/conv2D_2/bias/vAdam/output_dense/kernel/vAdam/output_dense/bias/vAdam/dense/kernel/vAdam/dense/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_118302ЇК
ъ
Ю
)__inference_conv2D_1_layer_call_fn_117925

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2D_1_layer_call_and_return_conditional_losses_117418w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
│

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_117993

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ї
c
*__inference_dropout_2_layer_call_fn_118034

inputs
identityИвStatefulPartitionedCall┴
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_117548p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Д
¤
D__inference_conv2D_2_layer_call_and_return_conditional_losses_117956

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
г
F
*__inference_dropout_2_layer_call_fn_118029

inputs
identity▒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_117479a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Н%
┌
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117661

inputs)
conv2d_1_117636: 
conv2d_1_117638: )
conv2d_2_117641: @
conv2d_2_117643:@'
output_dense_117649:
АHА"
output_dense_117651:	А
dense_117655:	А	
dense_117657:	
identityИв conv2D_1/StatefulPartitionedCallв conv2D_2/StatefulPartitionedCallвdense/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallв!dropout_2/StatefulPartitionedCallв$output_dense/StatefulPartitionedCall°
 conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_117636conv2d_1_117638*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2D_1_layer_call_and_return_conditional_losses_117418Ы
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall)conv2D_1/StatefulPartitionedCall:output:0conv2d_2_117641conv2d_2_117643*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2D_2_layer_call_and_return_conditional_losses_117435у
max_pool/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_max_pool_layer_call_and_return_conditional_losses_117397э
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall!max_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_117587█
flatten/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         АH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_117455Ы
$output_dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0output_dense_117649output_dense_117651*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_output_dense_layer_call_and_return_conditional_losses_117468Ц
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall-output_dense/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_117548И
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_117655dense_117657*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_117492u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         	Ы
NoOpNoOp!^conv2D_1/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall^dense/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall%^output_dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         : : : : : : : : 2D
 conv2D_1/StatefulPartitionedCall conv2D_1/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2L
$output_dense/StatefulPartitionedCall$output_dense/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
л

№
H__inference_output_dense_layer_call_and_return_conditional_losses_117468

inputs2
matmul_readvariableop_resource:
АHА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         АH: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         АH
 
_user_specified_nameinputs
╔	
╠
$__inference_signature_wrapper_117786
input_layer!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
АHА
	unknown_4:	А
	unknown_5:	А	
	unknown_6:	
identityИвStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_117388o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:         
%
_user_specified_nameinput_layer
б

є
A__inference_dense_layer_call_and_return_conditional_losses_117492

inputs1
matmul_readvariableop_resource:	А	-
biasadd_readvariableop_resource:	
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         	`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▄
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_118039

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
л

№
H__inference_output_dense_layer_call_and_return_conditional_losses_118024

inputs2
matmul_readvariableop_resource:
АHА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         АH: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         АH
 
_user_specified_nameinputs
▄
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_117479

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
и"
Ч
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117729
input_layer)
conv2d_1_117704: 
conv2d_1_117706: )
conv2d_2_117709: @
conv2d_2_117711:@'
output_dense_117717:
АHА"
output_dense_117719:	А
dense_117723:	А	
dense_117725:	
identityИв conv2D_1/StatefulPartitionedCallв conv2D_2/StatefulPartitionedCallвdense/StatefulPartitionedCallв$output_dense/StatefulPartitionedCall¤
 conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinput_layerconv2d_1_117704conv2d_1_117706*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2D_1_layer_call_and_return_conditional_losses_117418Ы
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall)conv2D_1/StatefulPartitionedCall:output:0conv2d_2_117709conv2d_2_117711*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2D_2_layer_call_and_return_conditional_losses_117435у
max_pool/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_max_pool_layer_call_and_return_conditional_losses_117397▌
dropout_1/PartitionedCallPartitionedCall!max_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_117447╙
flatten/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         АH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_117455Ы
$output_dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0output_dense_117717output_dense_117719*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_output_dense_layer_call_and_return_conditional_losses_117468т
dropout_2/PartitionedCallPartitionedCall-output_dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_117479А
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_117723dense_117725*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_117492u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         	╙
NoOpNoOp!^conv2D_1/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall^dense/StatefulPartitionedCall%^output_dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         : : : : : : : : 2D
 conv2D_1/StatefulPartitionedCall conv2D_1/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$output_dense/StatefulPartitionedCall$output_dense/StatefulPartitionedCall:\ X
/
_output_shapes
:         
%
_user_specified_nameinput_layer
°
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_117981

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┐
Ф
&__inference_dense_layer_call_fn_118060

inputs
unknown:	А	
	unknown_0:	
identityИвStatefulPartitionedCall╓
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_117492o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
б

є
A__inference_dense_layer_call_and_return_conditional_losses_118071

inputs1
matmul_readvariableop_resource:	А	-
biasadd_readvariableop_resource:	
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         	`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
∙	
╒
-__inference_conv2D_model_layer_call_fn_117701
input_layer!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
АHА
	unknown_4:	А
	unknown_5:	А	
	unknown_6:	
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117661o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:         
%
_user_specified_nameinput_layer
Д
¤
D__inference_conv2D_1_layer_call_and_return_conditional_losses_117418

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
М
`
D__inference_max_pool_layer_call_and_return_conditional_losses_117966

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
√	
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_118051

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
√	
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_117548

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Щ"
Т
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117499

inputs)
conv2d_1_117419: 
conv2d_1_117421: )
conv2d_2_117436: @
conv2d_2_117438:@'
output_dense_117469:
АHА"
output_dense_117471:	А
dense_117493:	А	
dense_117495:	
identityИв conv2D_1/StatefulPartitionedCallв conv2D_2/StatefulPartitionedCallвdense/StatefulPartitionedCallв$output_dense/StatefulPartitionedCall°
 conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_1_117419conv2d_1_117421*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2D_1_layer_call_and_return_conditional_losses_117418Ы
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall)conv2D_1/StatefulPartitionedCall:output:0conv2d_2_117436conv2d_2_117438*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2D_2_layer_call_and_return_conditional_losses_117435у
max_pool/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_max_pool_layer_call_and_return_conditional_losses_117397▌
dropout_1/PartitionedCallPartitionedCall!max_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_117447╙
flatten/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         АH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_117455Ы
$output_dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0output_dense_117469output_dense_117471*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_output_dense_layer_call_and_return_conditional_losses_117468т
dropout_2/PartitionedCallPartitionedCall-output_dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_117479А
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_117493dense_117495*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_117492u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         	╙
NoOpNoOp!^conv2D_1/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall^dense/StatefulPartitionedCall%^output_dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         : : : : : : : : 2D
 conv2D_1/StatefulPartitionedCall conv2D_1/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2L
$output_dense/StatefulPartitionedCall$output_dense/StatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
┐
F
*__inference_dropout_1_layer_call_fn_117971

inputs
identity╕
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_117447h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╤
Э
-__inference_output_dense_layer_call_fn_118013

inputs
unknown:
АHА
	unknown_0:	А
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_output_dense_layer_call_and_return_conditional_losses_117468p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         АH: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         АH
 
_user_specified_nameinputs
┼
_
C__inference_flatten_layer_call_and_return_conditional_losses_117455

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АHY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         АH"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
И+
╫
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117865

inputsA
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@?
+output_dense_matmul_readvariableop_resource:
АHА;
,output_dense_biasadd_readvariableop_resource:	А7
$dense_matmul_readvariableop_resource:	А	3
%dense_biasadd_readvariableop_resource:	
identityИвconv2D_1/BiasAdd/ReadVariableOpвconv2D_1/Conv2D/ReadVariableOpвconv2D_2/BiasAdd/ReadVariableOpвconv2D_2/Conv2D/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpв#output_dense/BiasAdd/ReadVariableOpв"output_dense/MatMul/ReadVariableOpО
conv2D_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0м
conv2D_1/Conv2DConv2Dinputs&conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
Д
conv2D_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
conv2D_1/BiasAddBiasAddconv2D_1/Conv2D:output:0'conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          j
conv2D_1/ReluReluconv2D_1/BiasAdd:output:0*
T0*/
_output_shapes
:          О
conv2D_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0┴
conv2D_2/Conv2DConv2Dconv2D_1/Relu:activations:0&conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Д
conv2D_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2D_2/BiasAddBiasAddconv2D_2/Conv2D:output:0'conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @j
conv2D_2/ReluReluconv2D_2/BiasAdd:output:0*
T0*/
_output_shapes
:         @е
max_pool/MaxPoolMaxPoolconv2D_2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
s
dropout_1/IdentityIdentitymax_pool/MaxPool:output:0*
T0*/
_output_shapes
:         @^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  В
flatten/ReshapeReshapedropout_1/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         АHР
"output_dense/MatMul/ReadVariableOpReadVariableOp+output_dense_matmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype0Ц
output_dense/MatMulMatMulflatten/Reshape:output:0*output_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АН
#output_dense/BiasAdd/ReadVariableOpReadVariableOp,output_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
output_dense/BiasAddBiasAddoutput_dense/MatMul:product:0+output_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аk
output_dense/ReluReluoutput_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         Аr
dropout_2/IdentityIdentityoutput_dense/Relu:activations:0*
T0*(
_output_shapes
:         АБ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А	*
dtype0К
dense/MatMulMatMuldropout_2/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	b
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:         	f
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         	╘
NoOpNoOp ^conv2D_1/BiasAdd/ReadVariableOp^conv2D_1/Conv2D/ReadVariableOp ^conv2D_2/BiasAdd/ReadVariableOp^conv2D_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp$^output_dense/BiasAdd/ReadVariableOp#^output_dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         : : : : : : : : 2B
conv2D_1/BiasAdd/ReadVariableOpconv2D_1/BiasAdd/ReadVariableOp2@
conv2D_1/Conv2D/ReadVariableOpconv2D_1/Conv2D/ReadVariableOp2B
conv2D_2/BiasAdd/ReadVariableOpconv2D_2/BiasAdd/ReadVariableOp2@
conv2D_2/Conv2D/ReadVariableOpconv2D_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2J
#output_dense/BiasAdd/ReadVariableOp#output_dense/BiasAdd/ReadVariableOp2H
"output_dense/MatMul/ReadVariableOp"output_dense/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
°
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_117447

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ъ	
╨
-__inference_conv2D_model_layer_call_fn_117828

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
АHА
	unknown_4:	А
	unknown_5:	А	
	unknown_6:	
identityИвStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117661o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ь%
▀
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117757
input_layer)
conv2d_1_117732: 
conv2d_1_117734: )
conv2d_2_117737: @
conv2d_2_117739:@'
output_dense_117745:
АHА"
output_dense_117747:	А
dense_117751:	А	
dense_117753:	
identityИв conv2D_1/StatefulPartitionedCallв conv2D_2/StatefulPartitionedCallвdense/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallв!dropout_2/StatefulPartitionedCallв$output_dense/StatefulPartitionedCall¤
 conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinput_layerconv2d_1_117732conv2d_1_117734*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2D_1_layer_call_and_return_conditional_losses_117418Ы
 conv2D_2/StatefulPartitionedCallStatefulPartitionedCall)conv2D_1/StatefulPartitionedCall:output:0conv2d_2_117737conv2d_2_117739*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2D_2_layer_call_and_return_conditional_losses_117435у
max_pool/PartitionedCallPartitionedCall)conv2D_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_max_pool_layer_call_and_return_conditional_losses_117397э
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall!max_pool/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_117587█
flatten/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         АH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_117455Ы
$output_dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0output_dense_117745output_dense_117747*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_output_dense_layer_call_and_return_conditional_losses_117468Ц
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall-output_dense/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_117548И
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_117751dense_117753*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_117492u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         	Ы
NoOpNoOp!^conv2D_1/StatefulPartitionedCall!^conv2D_2/StatefulPartitionedCall^dense/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall%^output_dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         : : : : : : : : 2D
 conv2D_1/StatefulPartitionedCall conv2D_1/StatefulPartitionedCall2D
 conv2D_2/StatefulPartitionedCall conv2D_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2L
$output_dense/StatefulPartitionedCall$output_dense/StatefulPartitionedCall:\ X
/
_output_shapes
:         
%
_user_specified_nameinput_layer
ЖG
╞
__inference__traced_save_118193
file_prefix.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop2
.savev2_output_dense_kernel_read_readvariableop0
,savev2_output_dense_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop9
5savev2_adam_output_dense_kernel_m_read_readvariableop7
3savev2_adam_output_dense_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop9
5savev2_adam_output_dense_kernel_v_read_readvariableop7
3savev2_adam_output_dense_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: п
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*╪
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH▒
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B з
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop.savev2_output_dense_kernel_read_readvariableop,savev2_output_dense_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop5savev2_adam_output_dense_kernel_m_read_readvariableop3savev2_adam_output_dense_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop5savev2_adam_output_dense_kernel_v_read_readvariableop3savev2_adam_output_dense_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*з
_input_shapesХ
Т: : : : @:@:
АHА:А:	А	:	: : : : : : : : : : : : @:@:
АHА:А:	А	:	: : : @:@:
АHА:А:	А	:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
АHА:!

_output_shapes	
:А:%!

_output_shapes
:	А	: 

_output_shapes
:	:	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
АHА:!

_output_shapes	
:А:%!

_output_shapes
:	А	: 

_output_shapes
:	:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
АHА:!

_output_shapes	
:А:% !

_output_shapes
:	А	: !

_output_shapes
:	:"

_output_shapes
: 
ъ
Ю
)__inference_conv2D_2_layer_call_fn_117945

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2D_2_layer_call_and_return_conditional_losses_117435w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
к
E
)__inference_max_pool_layer_call_fn_117961

inputs
identity╥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_max_pool_layer_call_and_return_conditional_losses_117397Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
н
D
(__inference_flatten_layer_call_fn_117998

inputs
identityп
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         АH* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_117455a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         АH"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╢:
╫
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117916

inputsA
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@?
+output_dense_matmul_readvariableop_resource:
АHА;
,output_dense_biasadd_readvariableop_resource:	А7
$dense_matmul_readvariableop_resource:	А	3
%dense_biasadd_readvariableop_resource:	
identityИвconv2D_1/BiasAdd/ReadVariableOpвconv2D_1/Conv2D/ReadVariableOpвconv2D_2/BiasAdd/ReadVariableOpвconv2D_2/Conv2D/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpв#output_dense/BiasAdd/ReadVariableOpв"output_dense/MatMul/ReadVariableOpО
conv2D_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0м
conv2D_1/Conv2DConv2Dinputs&conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
Д
conv2D_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
conv2D_1/BiasAddBiasAddconv2D_1/Conv2D:output:0'conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          j
conv2D_1/ReluReluconv2D_1/BiasAdd:output:0*
T0*/
_output_shapes
:          О
conv2D_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0┴
conv2D_2/Conv2DConv2Dconv2D_1/Relu:activations:0&conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Д
conv2D_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2D_2/BiasAddBiasAddconv2D_2/Conv2D:output:0'conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @j
conv2D_2/ReluReluconv2D_2/BiasAdd:output:0*
T0*/
_output_shapes
:         @е
max_pool/MaxPoolMaxPoolconv2D_2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?У
dropout_1/dropout/MulMulmax_pool/MaxPool:output:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:         @`
dropout_1/dropout/ShapeShapemax_pool/MaxPool:output:0*
T0*
_output_shapes
:и
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╠
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @Л
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @П
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:         @^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  В
flatten/ReshapeReshapedropout_1/dropout/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:         АHР
"output_dense/MatMul/ReadVariableOpReadVariableOp+output_dense_matmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype0Ц
output_dense/MatMulMatMulflatten/Reshape:output:0*output_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АН
#output_dense/BiasAdd/ReadVariableOpReadVariableOp,output_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
output_dense/BiasAddBiasAddoutput_dense/MatMul:product:0+output_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аk
output_dense/ReluReluoutput_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         А\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Т
dropout_2/dropout/MulMuloutput_dense/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*(
_output_shapes
:         Аf
dropout_2/dropout/ShapeShapeoutput_dense/Relu:activations:0*
T0*
_output_shapes
:б
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?┼
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АД
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АИ
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*(
_output_shapes
:         АБ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А	*
dtype0К
dense/MatMulMatMuldropout_2/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	b
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:         	f
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         	╘
NoOpNoOp ^conv2D_1/BiasAdd/ReadVariableOp^conv2D_1/Conv2D/ReadVariableOp ^conv2D_2/BiasAdd/ReadVariableOp^conv2D_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp$^output_dense/BiasAdd/ReadVariableOp#^output_dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         : : : : : : : : 2B
conv2D_1/BiasAdd/ReadVariableOpconv2D_1/BiasAdd/ReadVariableOp2@
conv2D_1/Conv2D/ReadVariableOpconv2D_1/Conv2D/ReadVariableOp2B
conv2D_2/BiasAdd/ReadVariableOpconv2D_2/BiasAdd/ReadVariableOp2@
conv2D_2/Conv2D/ReadVariableOpconv2D_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2J
#output_dense/BiasAdd/ReadVariableOp#output_dense/BiasAdd/ReadVariableOp2H
"output_dense/MatMul/ReadVariableOp"output_dense/MatMul/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
ъ	
╨
-__inference_conv2D_model_layer_call_fn_117807

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
АHА
	unknown_4:	А
	unknown_5:	А	
	unknown_6:	
identityИвStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117499o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
С
c
*__inference_dropout_1_layer_call_fn_117976

inputs
identityИвStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_117587w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╤Д
М
"__inference__traced_restore_118302
file_prefix:
 assignvariableop_conv2d_1_kernel: .
 assignvariableop_1_conv2d_1_bias: <
"assignvariableop_2_conv2d_2_kernel: @.
 assignvariableop_3_conv2d_2_bias:@:
&assignvariableop_4_output_dense_kernel:
АHА3
$assignvariableop_5_output_dense_bias:	А2
assignvariableop_6_dense_kernel:	А	+
assignvariableop_7_dense_bias:	&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: #
assignvariableop_15_total: #
assignvariableop_16_count: D
*assignvariableop_17_adam_conv2d_1_kernel_m: 6
(assignvariableop_18_adam_conv2d_1_bias_m: D
*assignvariableop_19_adam_conv2d_2_kernel_m: @6
(assignvariableop_20_adam_conv2d_2_bias_m:@B
.assignvariableop_21_adam_output_dense_kernel_m:
АHА;
,assignvariableop_22_adam_output_dense_bias_m:	А:
'assignvariableop_23_adam_dense_kernel_m:	А	3
%assignvariableop_24_adam_dense_bias_m:	D
*assignvariableop_25_adam_conv2d_1_kernel_v: 6
(assignvariableop_26_adam_conv2d_1_bias_v: D
*assignvariableop_27_adam_conv2d_2_kernel_v: @6
(assignvariableop_28_adam_conv2d_2_bias_v:@B
.assignvariableop_29_adam_output_dense_kernel_v:
АHА;
,assignvariableop_30_adam_output_dense_bias_v:	А:
'assignvariableop_31_adam_dense_kernel_v:	А	3
%assignvariableop_32_adam_dense_bias_v:	
identity_34ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9▓
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*╪
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┤
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╦
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOpAssignVariableOp assignvariableop_conv2d_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_4AssignVariableOp&assignvariableop_4_output_dense_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_5AssignVariableOp$assignvariableop_5_output_dense_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:Л
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_conv2d_1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_conv2d_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_conv2d_2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_conv2d_2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_21AssignVariableOp.assignvariableop_21_adam_output_dense_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_22AssignVariableOp,assignvariableop_22_adam_output_dense_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_24AssignVariableOp%assignvariableop_24_adam_dense_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_1_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_1_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv2d_2_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv2d_2_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_29AssignVariableOp.assignvariableop_29_adam_output_dense_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_30AssignVariableOp,assignvariableop_30_adam_output_dense_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_32AssignVariableOp%assignvariableop_32_adam_dense_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 е
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: Т
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
∙	
╒
-__inference_conv2D_model_layer_call_fn_117518
input_layer!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@
	unknown_3:
АHА
	unknown_4:	А
	unknown_5:	А	
	unknown_6:	
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         	**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117499o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:         
%
_user_specified_nameinput_layer
Ё4
Е
!__inference__wrapped_model_117388
input_layerN
4conv2d_model_conv2d_1_conv2d_readvariableop_resource: C
5conv2d_model_conv2d_1_biasadd_readvariableop_resource: N
4conv2d_model_conv2d_2_conv2d_readvariableop_resource: @C
5conv2d_model_conv2d_2_biasadd_readvariableop_resource:@L
8conv2d_model_output_dense_matmul_readvariableop_resource:
АHАH
9conv2d_model_output_dense_biasadd_readvariableop_resource:	АD
1conv2d_model_dense_matmul_readvariableop_resource:	А	@
2conv2d_model_dense_biasadd_readvariableop_resource:	
identityИв,conv2D_model/conv2D_1/BiasAdd/ReadVariableOpв+conv2D_model/conv2D_1/Conv2D/ReadVariableOpв,conv2D_model/conv2D_2/BiasAdd/ReadVariableOpв+conv2D_model/conv2D_2/Conv2D/ReadVariableOpв)conv2D_model/dense/BiasAdd/ReadVariableOpв(conv2D_model/dense/MatMul/ReadVariableOpв0conv2D_model/output_dense/BiasAdd/ReadVariableOpв/conv2D_model/output_dense/MatMul/ReadVariableOpи
+conv2D_model/conv2D_1/Conv2D/ReadVariableOpReadVariableOp4conv2d_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╦
conv2D_model/conv2D_1/Conv2DConv2Dinput_layer3conv2D_model/conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
Ю
,conv2D_model/conv2D_1/BiasAdd/ReadVariableOpReadVariableOp5conv2d_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┐
conv2D_model/conv2D_1/BiasAddBiasAdd%conv2D_model/conv2D_1/Conv2D:output:04conv2D_model/conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          Д
conv2D_model/conv2D_1/ReluRelu&conv2D_model/conv2D_1/BiasAdd:output:0*
T0*/
_output_shapes
:          и
+conv2D_model/conv2D_2/Conv2D/ReadVariableOpReadVariableOp4conv2d_model_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ш
conv2D_model/conv2D_2/Conv2DConv2D(conv2D_model/conv2D_1/Relu:activations:03conv2D_model/conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Ю
,conv2D_model/conv2D_2/BiasAdd/ReadVariableOpReadVariableOp5conv2d_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┐
conv2D_model/conv2D_2/BiasAddBiasAdd%conv2D_model/conv2D_2/Conv2D:output:04conv2D_model/conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Д
conv2D_model/conv2D_2/ReluRelu&conv2D_model/conv2D_2/BiasAdd:output:0*
T0*/
_output_shapes
:         @┐
conv2D_model/max_pool/MaxPoolMaxPool(conv2D_model/conv2D_2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Н
conv2D_model/dropout_1/IdentityIdentity&conv2D_model/max_pool/MaxPool:output:0*
T0*/
_output_shapes
:         @k
conv2D_model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  й
conv2D_model/flatten/ReshapeReshape(conv2D_model/dropout_1/Identity:output:0#conv2D_model/flatten/Const:output:0*
T0*(
_output_shapes
:         АHк
/conv2D_model/output_dense/MatMul/ReadVariableOpReadVariableOp8conv2d_model_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype0╜
 conv2D_model/output_dense/MatMulMatMul%conv2D_model/flatten/Reshape:output:07conv2D_model/output_dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аз
0conv2D_model/output_dense/BiasAdd/ReadVariableOpReadVariableOp9conv2d_model_output_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┼
!conv2D_model/output_dense/BiasAddBiasAdd*conv2D_model/output_dense/MatMul:product:08conv2D_model/output_dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
conv2D_model/output_dense/ReluRelu*conv2D_model/output_dense/BiasAdd:output:0*
T0*(
_output_shapes
:         АМ
conv2D_model/dropout_2/IdentityIdentity,conv2D_model/output_dense/Relu:activations:0*
T0*(
_output_shapes
:         АЫ
(conv2D_model/dense/MatMul/ReadVariableOpReadVariableOp1conv2d_model_dense_matmul_readvariableop_resource*
_output_shapes
:	А	*
dtype0▒
conv2D_model/dense/MatMulMatMul(conv2D_model/dropout_2/Identity:output:00conv2D_model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	Ш
)conv2D_model/dense/BiasAdd/ReadVariableOpReadVariableOp2conv2d_model_dense_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0п
conv2D_model/dense/BiasAddBiasAdd#conv2D_model/dense/MatMul:product:01conv2D_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         	|
conv2D_model/dense/SoftmaxSoftmax#conv2D_model/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         	s
IdentityIdentity$conv2D_model/dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         	╝
NoOpNoOp-^conv2D_model/conv2D_1/BiasAdd/ReadVariableOp,^conv2D_model/conv2D_1/Conv2D/ReadVariableOp-^conv2D_model/conv2D_2/BiasAdd/ReadVariableOp,^conv2D_model/conv2D_2/Conv2D/ReadVariableOp*^conv2D_model/dense/BiasAdd/ReadVariableOp)^conv2D_model/dense/MatMul/ReadVariableOp1^conv2D_model/output_dense/BiasAdd/ReadVariableOp0^conv2D_model/output_dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:         : : : : : : : : 2\
,conv2D_model/conv2D_1/BiasAdd/ReadVariableOp,conv2D_model/conv2D_1/BiasAdd/ReadVariableOp2Z
+conv2D_model/conv2D_1/Conv2D/ReadVariableOp+conv2D_model/conv2D_1/Conv2D/ReadVariableOp2\
,conv2D_model/conv2D_2/BiasAdd/ReadVariableOp,conv2D_model/conv2D_2/BiasAdd/ReadVariableOp2Z
+conv2D_model/conv2D_2/Conv2D/ReadVariableOp+conv2D_model/conv2D_2/Conv2D/ReadVariableOp2V
)conv2D_model/dense/BiasAdd/ReadVariableOp)conv2D_model/dense/BiasAdd/ReadVariableOp2T
(conv2D_model/dense/MatMul/ReadVariableOp(conv2D_model/dense/MatMul/ReadVariableOp2d
0conv2D_model/output_dense/BiasAdd/ReadVariableOp0conv2D_model/output_dense/BiasAdd/ReadVariableOp2b
/conv2D_model/output_dense/MatMul/ReadVariableOp/conv2D_model/output_dense/MatMul/ReadVariableOp:\ X
/
_output_shapes
:         
%
_user_specified_nameinput_layer
Д
¤
D__inference_conv2D_1_layer_call_and_return_conditional_losses_117936

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
_user_specified_nameinputs
┼
_
C__inference_flatten_layer_call_and_return_conditional_losses_118004

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АHY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         АH"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Д
¤
D__inference_conv2D_2_layer_call_and_return_conditional_losses_117435

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
М
`
D__inference_max_pool_layer_call_and_return_conditional_losses_117397

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
│

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_117587

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:         @a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs"╡	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╕
serving_defaultд
K
input_layer<
serving_default_input_layer:0         9
dense0
StatefulPartitionedCall:0         	tensorflow/serving/predict:╤┘
└
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
▌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
▌
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
 $_jit_compiled_convolution_op"
_tf_keras_layer
е
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1_random_generator"
_tf_keras_layer
е
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias"
_tf_keras_layer
╝
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
F_random_generator"
_tf_keras_layer
╗
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias"
_tf_keras_layer
X
0
1
"2
#3
>4
?5
M6
N7"
trackable_list_wrapper
X
0
1
"2
#3
>4
?5
M6
N7"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
щ
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_32■
-__inference_conv2D_model_layer_call_fn_117518
-__inference_conv2D_model_layer_call_fn_117807
-__inference_conv2D_model_layer_call_fn_117828
-__inference_conv2D_model_layer_call_fn_117701┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zTtrace_0zUtrace_1zVtrace_2zWtrace_3
╒
Xtrace_0
Ytrace_1
Ztrace_2
[trace_32ъ
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117865
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117916
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117729
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117757┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zXtrace_0zYtrace_1zZtrace_2z[trace_3
╨B═
!__inference__wrapped_model_117388input_layer"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є
\iter

]beta_1

^beta_2
	_decay
`learning_ratemйmк"mл#mм>mн?mоMmпNm░v▒v▓"v│#v┤>v╡?v╢Mv╖Nv╕"
	optimizer
,
aserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
э
gtrace_02╨
)__inference_conv2D_1_layer_call_fn_117925в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zgtrace_0
И
htrace_02ы
D__inference_conv2D_1_layer_call_and_return_conditional_losses_117936в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zhtrace_0
):' 2conv2D_1/kernel
: 2conv2D_1/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
э
ntrace_02╨
)__inference_conv2D_2_layer_call_fn_117945в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zntrace_0
И
otrace_02ы
D__inference_conv2D_2_layer_call_and_return_conditional_losses_117956в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zotrace_0
):' @2conv2D_2/kernel
:@2conv2D_2/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
э
utrace_02╨
)__inference_max_pool_layer_call_fn_117961в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zutrace_0
И
vtrace_02ы
D__inference_max_pool_layer_call_and_return_conditional_losses_117966в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zvtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
┼
|trace_0
}trace_12О
*__inference_dropout_1_layer_call_fn_117971
*__inference_dropout_1_layer_call_fn_117976│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z|trace_0z}trace_1
√
~trace_0
trace_12─
E__inference_dropout_1_layer_call_and_return_conditional_losses_117981
E__inference_dropout_1_layer_call_and_return_conditional_losses_117993│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z~trace_0ztrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
ю
Еtrace_02╧
(__inference_flatten_layer_call_fn_117998в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0
Й
Жtrace_02ъ
C__inference_flatten_layer_call_and_return_conditional_losses_118004в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЖtrace_0
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
є
Мtrace_02╘
-__inference_output_dense_layer_call_fn_118013в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zМtrace_0
О
Нtrace_02я
H__inference_output_dense_layer_call_and_return_conditional_losses_118024в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zНtrace_0
':%
АHА2output_dense/kernel
 :А2output_dense/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
╔
Уtrace_0
Фtrace_12О
*__inference_dropout_2_layer_call_fn_118029
*__inference_dropout_2_layer_call_fn_118034│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zУtrace_0zФtrace_1
 
Хtrace_0
Цtrace_12─
E__inference_dropout_2_layer_call_and_return_conditional_losses_118039
E__inference_dropout_2_layer_call_and_return_conditional_losses_118051│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zХtrace_0zЦtrace_1
"
_generic_user_object
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
ь
Ьtrace_02═
&__inference_dense_layer_call_fn_118060в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЬtrace_0
З
Эtrace_02ш
A__inference_dense_layer_call_and_return_conditional_losses_118071в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЭtrace_0
:	А	2dense/kernel
:	2
dense/bias
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
Ю0
Я1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ГBА
-__inference_conv2D_model_layer_call_fn_117518input_layer"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
-__inference_conv2D_model_layer_call_fn_117807inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
-__inference_conv2D_model_layer_call_fn_117828inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ГBА
-__inference_conv2D_model_layer_call_fn_117701input_layer"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЩBЦ
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117865inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЩBЦ
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117916inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117729input_layer"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЮBЫ
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117757input_layer"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
╧B╠
$__inference_signature_wrapper_117786input_layer"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▌B┌
)__inference_conv2D_1_layer_call_fn_117925inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_conv2D_1_layer_call_and_return_conditional_losses_117936inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▌B┌
)__inference_conv2D_2_layer_call_fn_117945inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_conv2D_2_layer_call_and_return_conditional_losses_117956inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▌B┌
)__inference_max_pool_layer_call_fn_117961inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_max_pool_layer_call_and_return_conditional_losses_117966inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яBь
*__inference_dropout_1_layer_call_fn_117971inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
*__inference_dropout_1_layer_call_fn_117976inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_1_layer_call_and_return_conditional_losses_117981inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_1_layer_call_and_return_conditional_losses_117993inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▄B┘
(__inference_flatten_layer_call_fn_117998inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_flatten_layer_call_and_return_conditional_losses_118004inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
-__inference_output_dense_layer_call_fn_118013inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
H__inference_output_dense_layer_call_and_return_conditional_losses_118024inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яBь
*__inference_dropout_2_layer_call_fn_118029inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
*__inference_dropout_2_layer_call_fn_118034inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_2_layer_call_and_return_conditional_losses_118039inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_2_layer_call_and_return_conditional_losses_118051inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌B╫
&__inference_dense_layer_call_fn_118060inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
A__inference_dense_layer_call_and_return_conditional_losses_118071inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
а	variables
б	keras_api

вtotal

гcount"
_tf_keras_metric
c
д	variables
е	keras_api

жtotal

зcount
и
_fn_kwargs"
_tf_keras_metric
0
в0
г1"
trackable_list_wrapper
.
а	variables"
_generic_user_object
:  (2total
:  (2count
0
ж0
з1"
trackable_list_wrapper
.
д	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.:, 2Adam/conv2D_1/kernel/m
 : 2Adam/conv2D_1/bias/m
.:, @2Adam/conv2D_2/kernel/m
 :@2Adam/conv2D_2/bias/m
,:*
АHА2Adam/output_dense/kernel/m
%:#А2Adam/output_dense/bias/m
$:"	А	2Adam/dense/kernel/m
:	2Adam/dense/bias/m
.:, 2Adam/conv2D_1/kernel/v
 : 2Adam/conv2D_1/bias/v
.:, @2Adam/conv2D_2/kernel/v
 :@2Adam/conv2D_2/bias/v
,:*
АHА2Adam/output_dense/kernel/v
%:#А2Adam/output_dense/bias/v
$:"	А	2Adam/dense/kernel/v
:	2Adam/dense/bias/vЬ
!__inference__wrapped_model_117388w"#>?MN<в9
2в/
-К*
input_layer         
к "-к*
(
denseК
dense         	┤
D__inference_conv2D_1_layer_call_and_return_conditional_losses_117936l7в4
-в*
(К%
inputs         
к "-в*
#К 
0          
Ъ М
)__inference_conv2D_1_layer_call_fn_117925_7в4
-в*
(К%
inputs         
к " К          ┤
D__inference_conv2D_2_layer_call_and_return_conditional_losses_117956l"#7в4
-в*
(К%
inputs          
к "-в*
#К 
0         @
Ъ М
)__inference_conv2D_2_layer_call_fn_117945_"#7в4
-в*
(К%
inputs          
к " К         @├
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117729w"#>?MNDвA
:в7
-К*
input_layer         
p 

 
к "%в"
К
0         	
Ъ ├
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117757w"#>?MNDвA
:в7
-К*
input_layer         
p

 
к "%в"
К
0         	
Ъ ╛
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117865r"#>?MN?в<
5в2
(К%
inputs         
p 

 
к "%в"
К
0         	
Ъ ╛
H__inference_conv2D_model_layer_call_and_return_conditional_losses_117916r"#>?MN?в<
5в2
(К%
inputs         
p

 
к "%в"
К
0         	
Ъ Ы
-__inference_conv2D_model_layer_call_fn_117518j"#>?MNDвA
:в7
-К*
input_layer         
p 

 
к "К         	Ы
-__inference_conv2D_model_layer_call_fn_117701j"#>?MNDвA
:в7
-К*
input_layer         
p

 
к "К         	Ц
-__inference_conv2D_model_layer_call_fn_117807e"#>?MN?в<
5в2
(К%
inputs         
p 

 
к "К         	Ц
-__inference_conv2D_model_layer_call_fn_117828e"#>?MN?в<
5в2
(К%
inputs         
p

 
к "К         	в
A__inference_dense_layer_call_and_return_conditional_losses_118071]MN0в-
&в#
!К
inputs         А
к "%в"
К
0         	
Ъ z
&__inference_dense_layer_call_fn_118060PMN0в-
&в#
!К
inputs         А
к "К         	╡
E__inference_dropout_1_layer_call_and_return_conditional_losses_117981l;в8
1в.
(К%
inputs         @
p 
к "-в*
#К 
0         @
Ъ ╡
E__inference_dropout_1_layer_call_and_return_conditional_losses_117993l;в8
1в.
(К%
inputs         @
p
к "-в*
#К 
0         @
Ъ Н
*__inference_dropout_1_layer_call_fn_117971_;в8
1в.
(К%
inputs         @
p 
к " К         @Н
*__inference_dropout_1_layer_call_fn_117976_;в8
1в.
(К%
inputs         @
p
к " К         @з
E__inference_dropout_2_layer_call_and_return_conditional_losses_118039^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ з
E__inference_dropout_2_layer_call_and_return_conditional_losses_118051^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ 
*__inference_dropout_2_layer_call_fn_118029Q4в1
*в'
!К
inputs         А
p 
к "К         А
*__inference_dropout_2_layer_call_fn_118034Q4в1
*в'
!К
inputs         А
p
к "К         Аи
C__inference_flatten_layer_call_and_return_conditional_losses_118004a7в4
-в*
(К%
inputs         @
к "&в#
К
0         АH
Ъ А
(__inference_flatten_layer_call_fn_117998T7в4
-в*
(К%
inputs         @
к "К         АHч
D__inference_max_pool_layer_call_and_return_conditional_losses_117966ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ┐
)__inference_max_pool_layer_call_fn_117961СRвO
HвE
CК@
inputs4                                    
к ";К84                                    к
H__inference_output_dense_layer_call_and_return_conditional_losses_118024^>?0в-
&в#
!К
inputs         АH
к "&в#
К
0         А
Ъ В
-__inference_output_dense_layer_call_fn_118013Q>?0в-
&в#
!К
inputs         АH
к "К         Ап
$__inference_signature_wrapper_117786Ж"#>?MNKвH
в 
Aк>
<
input_layer-К*
input_layer         "-к*
(
denseК
dense         	