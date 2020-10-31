.class public Lmiui/upnp/typedef/device/DeviceDefinition;
.super Ljava/lang/Object;
.source "DeviceDefinition.java"


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field public static Address:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final DLNA_CAP:Ljava/lang/String; = "dlna:X_DLNACAP"

.field private static final DLNA_DOC:Ljava/lang/String; = "dlna:X_DLNADOC"

.field public static DeviceId:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static DlnaCap:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static DlnaDoc:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final FRIENDLY_NAME:Ljava/lang/String; = "friendlyName"

.field public static FriendlyName:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final HOST_PORT:Ljava/lang/String; = "hostPort"

.field public static HostPort:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final LOCATION:Ljava/lang/String; = "location"

.field public static Location:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field private static final MANUFACTURER_URL:Ljava/lang/String; = "manufacturerURL"

.field private static final MODEL_DESCRIPTION:Ljava/lang/String; = "modelDescription"

.field private static final MODEL_NAME:Ljava/lang/String; = "modelName"

.field private static final MODEL_NUMBER:Ljava/lang/String; = "modelNumber"

.field private static final MODEL_URL:Ljava/lang/String; = "modelURL"

.field public static Manufacturer:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static ManufacturerUrl:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static ModelDescription:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static ModelName:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static ModelNumber:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field public static ModelUrl:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final PRESENTATION_URL:Ljava/lang/String; = "presentationURL"

.field public static PresentationUrl:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final QPLAY_CAPABILITY:Ljava/lang/String; = "qq:X_QPlay_SoftwareCapability"

.field public static QplayCapability:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final SERIAL_NUMBER:Ljava/lang/String; = "serialNumber"

.field public static SerialNumber:Lmiui/upnp/typedef/field/FieldDefinition; = null

.field private static final UDN:Ljava/lang/String; = "UDN"

.field private static final UPC:Ljava/lang/String; = "UPC"

.field private static final URLBASE:Ljava/lang/String; = "URLBase"

.field public static Upc:Lmiui/upnp/typedef/field/FieldDefinition;

.field public static UrlBase:Lmiui/upnp/typedef/field/FieldDefinition;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "location"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->Location:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "address"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->Address:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->INT:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "hostPort"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->HostPort:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "UDN"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->DeviceId:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "friendlyName"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->FriendlyName:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "manufacturer"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->Manufacturer:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "manufacturerURL"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->ManufacturerUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "modelDescription"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelDescription:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "modelName"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelName:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "modelNumber"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelNumber:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "modelURL"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->ModelUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "serialNumber"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->SerialNumber:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "presentationURL"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->PresentationUrl:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "URLBase"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->UrlBase:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "UPC"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->Upc:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "qq:X_QPlay_SoftwareCapability"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->QplayCapability:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "dlna:X_DLNADOC"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->DlnaDoc:Lmiui/upnp/typedef/field/FieldDefinition;

    new-instance v0, Lmiui/upnp/typedef/field/FieldDefinition;

    sget-object v1, Lmiui/upnp/typedef/datatype/DataType;->STRING:Lmiui/upnp/typedef/datatype/DataType;

    const-string v2, "dlna:X_DLNACAP"

    invoke-direct {v0, v2, v1}, Lmiui/upnp/typedef/field/FieldDefinition;-><init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V

    sput-object v0, Lmiui/upnp/typedef/device/DeviceDefinition;->DlnaCap:Lmiui/upnp/typedef/field/FieldDefinition;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
