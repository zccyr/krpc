
�
userservice.protokrpcext.proto"B
LoginReq
userName (	RuserName
password (	Rpassword"T
LoginRes
retCode (RretCode
retMsg (	RretMsg
userId (	RuserId"B
UpdateProfileReq
userId (	RuserId
mobile (	Rmobile"D
UpdateProfileRes
retCode (RretCode
retMsg (	RretMsg"n
ValidateTestReq)
userId (	B����1,2,3RuserId"
mobile (	B
��*22Rmobile
i (Ri"+
ValidateTestRes
retCode (RretCode"?
PushReq
clientId (	RclientId
message (	Rmessage";
PushRes
retCode (RretCode
retMsg (	RretMsg"9
OrderItemAttr
name (	Rname
value (	Rvalue"s
	OrderItem
itemId (	RitemId
name (	Rname
price (Rprice$
attrs (2.OrderItemAttrRattrs"C
Order
orderId (	RorderId 
items (2
.OrderItemRitems"s
Session
	loginFlag (	R	loginFlag
userId (	RuserId
userName (	RuserName
mobile (	Rmobile"g
OrderDetail
name (	Rname
quantity (Rquantity
price (Rprice
note (	Rnote"�
HttpTestReq

httpMethod (	R
httpMethod

httpSchema (	R
httpSchema
httpPath (	RhttpPath(
httpQueryString (	RhttpQueryString(
httpContentType (	RhttpContentType 
httpContent (	RhttpContent"
session (2.SessionRsession
orderId (	RorderId
	quantity1	 (R	quantity1
	quantity2
 (R	quantity2
	quantity3 (R	quantity3
	quantity4 (R	quantity4
price1 (Rprice1
price2 (Rprice2
status (2.StatusRstatus"
items (2.OrderDetailRitems
userId (	RuserId
userName (	RuserName
mobile (	Rmobile
	sessionId (	R	sessionId

headerHost (	R
headerHost
	cookieTnk (	R	cookieTnk
colors (	Rcolors"�
HttpTestRes
retCode (RretCode
retMsg (	RretMsg
userId (	RuserId"
session (2.SessionRsession
httpCode (RhttpCode(
httpContentType (	RhttpContentType&
headerLocation (	RheaderLocation(
headerXmmDddCcc (	RheaderXmmDddCcc
	cookieTnk	 (	R	cookieTnk

totalPrice
 (R
totalPrice*,
Status
	NOT_READY 	
READY
PAID2u
UserService#
login	.LoginReq	.LoginRes"��;
updateProfile.UpdateProfileReq.UpdateProfileRes"����d2F
TestService1
test1.ValidateTestReq.ValidateTestRes"����e25
PushService 
push.PushReq.PushRes"����f29
PushServicev2"
pushv2.PushReq.PushRes"����gB2
com.xxx.userservice.protoBUserServiceMetasP�bproto3