.class public final synthetic Landroid/app/role/-$$Lambda$RoleControllerService$1$UVI1sAWAcBnt3Enqn2IT-Lirwtk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerService$1$UVI1sAWAcBnt3Enqn2IT-Lirwtk;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/role/-$$Lambda$RoleControllerService$1$UVI1sAWAcBnt3Enqn2IT-Lirwtk;

    invoke-direct {v0}, Landroid/app/role/-$$Lambda$RoleControllerService$1$UVI1sAWAcBnt3Enqn2IT-Lirwtk;-><init>()V

    sput-object v0, Landroid/app/role/-$$Lambda$RoleControllerService$1$UVI1sAWAcBnt3Enqn2IT-Lirwtk;->INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerService$1$UVI1sAWAcBnt3Enqn2IT-Lirwtk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Landroid/app/role/RoleControllerService;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Landroid/os/RemoteCallback;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/app/role/RoleControllerService$1;->lambda$onAddRoleHolder$1(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method
