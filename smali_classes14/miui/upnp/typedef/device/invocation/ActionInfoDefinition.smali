.class public Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;
.super Ljava/lang/Object;
.source "ActionInfoDefinition.java"


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field public static Address:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final CONTROL_URL:Ljava/lang/String; = "controlURL"

.field public static ControlUrl:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static DeviceId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final HOST_PORT:Ljava/lang/String; = "port"

.field public static HostPort:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final SERVICE_ID:Ljava/lang/String; = "serviceId"

.field private static final SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

.field public static SessionId:Lmiui/upnp/typedef/field/FieldDefinition;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "address"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->Address:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "port"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "controlURL"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->ControlUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "deviceId"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "serviceId"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->ServiceId:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "sessionId"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/invocation/ActionInfoDefinition;->SessionId:Lmiui/upnp/typedef/field/FieldDefinition;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
