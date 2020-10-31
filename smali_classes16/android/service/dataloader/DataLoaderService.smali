.class public abstract Landroid/service/dataloader/DataLoaderService;
.super Landroid/app/Service;
.source "DataLoaderService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dataloader/DataLoaderService$FileSystemConnector;,
        Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;,
        Landroid/service/dataloader/DataLoaderService$DataLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataLoaderService"


# instance fields
.field private final mBinder:Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;-><init>(Landroid/service/dataloader/DataLoaderService;Landroid/service/dataloader/DataLoaderService$1;)V

    iput-object v0, p0, Landroid/service/dataloader/DataLoaderService;->mBinder:Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;

    return-void
.end method

.method static synthetic access$100(Landroid/service/dataloader/DataLoaderService;ILandroid/content/pm/FileSystemControlParcel;Landroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;)Z
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/dataloader/DataLoaderService;->nativeCreateDataLoader(ILandroid/content/pm/FileSystemControlParcel;Landroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/service/dataloader/DataLoaderService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/dataloader/DataLoaderService;->nativeStartDataLoader(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/service/dataloader/DataLoaderService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/dataloader/DataLoaderService;->nativeStopDataLoader(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/service/dataloader/DataLoaderService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/dataloader/DataLoaderService;->nativeDestroyDataLoader(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/service/dataloader/DataLoaderService;I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/service/dataloader/DataLoaderService;->nativePrepareImage(I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(JLjava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Landroid/service/dataloader/DataLoaderService;->nativeWriteData(JLjava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method private native nativeCreateDataLoader(ILandroid/content/pm/FileSystemControlParcel;Landroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;)Z
.end method

.method private native nativeDestroyDataLoader(I)Z
.end method

.method private native nativePrepareImage(I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)Z
.end method

.method private native nativeStartDataLoader(I)Z
.end method

.method private native nativeStopDataLoader(I)Z
.end method

.method private static native nativeWriteData(JLjava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/service/dataloader/DataLoaderService;->mBinder:Landroid/service/dataloader/DataLoaderService$DataLoaderBinderService;

    return-object v0
.end method

.method public onCreateDataLoader(Landroid/content/pm/DataLoaderParams;)Landroid/service/dataloader/DataLoaderService$DataLoader;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
