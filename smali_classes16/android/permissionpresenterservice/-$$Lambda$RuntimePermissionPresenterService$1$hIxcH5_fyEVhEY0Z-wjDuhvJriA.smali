.class public final synthetic Landroid/permissionpresenterservice/-$$Lambda$RuntimePermissionPresenterService$1$hIxcH5_fyEVhEY0Z-wjDuhvJriA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/permissionpresenterservice/-$$Lambda$RuntimePermissionPresenterService$1$hIxcH5_fyEVhEY0Z-wjDuhvJriA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/permissionpresenterservice/-$$Lambda$RuntimePermissionPresenterService$1$hIxcH5_fyEVhEY0Z-wjDuhvJriA;

    invoke-direct {v0}, Landroid/permissionpresenterservice/-$$Lambda$RuntimePermissionPresenterService$1$hIxcH5_fyEVhEY0Z-wjDuhvJriA;-><init>()V

    sput-object v0, Landroid/permissionpresenterservice/-$$Lambda$RuntimePermissionPresenterService$1$hIxcH5_fyEVhEY0Z-wjDuhvJriA;->INSTANCE:Landroid/permissionpresenterservice/-$$Lambda$RuntimePermissionPresenterService$1$hIxcH5_fyEVhEY0Z-wjDuhvJriA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/os/RemoteCallback;

    invoke-static {p1, p2, p3}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->lambda$getAppPermissions$0(Ljava/lang/Object;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method
