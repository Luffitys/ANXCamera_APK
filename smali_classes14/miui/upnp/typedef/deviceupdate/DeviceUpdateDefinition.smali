.class public Lmiui/upnp/typedef/deviceupdate/DeviceUpdateDefinition;
.super Ljava/lang/Object;
.source "DeviceUpdateDefinition.java"


# static fields
.field private static final DISCOVERY_TYPE:Ljava/lang/String; = "discoveryType"

.field public static DeviceId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static DiscoveryType:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final UDN:Ljava/lang/String; = "UDN"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "UDN"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "discoveryType"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/deviceupdate/DeviceUpdateDefinition;->DiscoveryType:Lmiui/upnp/typedef/field/FieldDefinition;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
