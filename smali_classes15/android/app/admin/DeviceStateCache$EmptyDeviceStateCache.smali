.class Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;
.super Landroid/app/admin/DeviceStateCache;
.source "DeviceStateCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DeviceStateCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyDeviceStateCache"
.end annotation


# static fields
.field private static final INSTANCE:Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;

    invoke-direct {v0}, Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;->INSTANCE:Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/admin/DeviceStateCache;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;
    .registers 1

    sget-object v0, Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;->INSTANCE:Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;

    return-object v0
.end method


# virtual methods
.method public isDeviceProvisioned()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
