.class public Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;
.super Ljava/lang/Object;
.source "SubscriptionInfoDefinition.java"


# static fields
.field private static final CALLBACK_URL:Ljava/lang/String; = "callbackUrl"

.field private static final CP_ADDRESS:Ljava/lang/String; = "cpAddress"

.field private static final CP_PORT:Ljava/lang/String; = "cpPort"

.field public static CallbackUrl:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static CpAddress:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static CpPort:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static DeviceId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final EVENT_SUB_URL:Ljava/lang/String; = "eventSubURL"

.field public static EventSubUrl:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final HOST_ADDRESS:Ljava/lang/String; = "hostAddress"

.field private static final HOST_PORT:Ljava/lang/String; = "hostPort"

.field public static HostAddress:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static HostPort:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final SERVICE_ID:Ljava/lang/String; = "serviceId"

.field private static final SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final SUBSCRIBED:Ljava/lang/String; = "subscribed"

.field private static final SUBSCRIPTION_ID:Ljava/lang/String; = "subscriptionId"

.field public static ServiceId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static SessionId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static Subscribed:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final TIMEOUT:Ljava/lang/String; = "timeout"

.field public static Timeout:Lmiui/upnp/typedef/field/FieldDefinition;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "hostAddress"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->HostAddress:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "hostPort"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "deviceId"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "serviceId"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "eventSubURL"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->EventSubUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "subscriptionId"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->SubscriptionId:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->BOOLEAN:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "subscribed"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->Subscribed:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "timeout"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->Timeout:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "sessionId"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "callbackUrl"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CallbackUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "cpAddress"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CpAddress:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "cpPort"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/SubscriptionInfoDefinition;->CpPort:Lmiui/upnp/typedef/field/FieldDefinition;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
