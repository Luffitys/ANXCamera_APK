.class public final synthetic Landroid/app/role/-$$Lambda$RoleControllerService$1$dBm1t_MGyEA9yMAxoOUMOhYVmPo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerService$1$dBm1t_MGyEA9yMAxoOUMOhYVmPo;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/role/-$$Lambda$RoleControllerService$1$dBm1t_MGyEA9yMAxoOUMOhYVmPo;

    invoke-direct {v0}, Landroid/app/role/-$$Lambda$RoleControllerService$1$dBm1t_MGyEA9yMAxoOUMOhYVmPo;-><init>()V

    sput-object v0, Landroid/app/role/-$$Lambda$RoleControllerService$1$dBm1t_MGyEA9yMAxoOUMOhYVmPo;->INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerService$1$dBm1t_MGyEA9yMAxoOUMOhYVmPo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/app/role/RoleControllerService;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Landroid/os/RemoteCallback;

    invoke-static {p1, p2, p3, p4}, Landroid/app/role/RoleControllerService$1;->lambda$onClearRoleHolders$3(Ljava/lang/Object;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method
