.class public final synthetic Landroid/app/role/-$$Lambda$RoleControllerService$1$PB6H1df6VvLzUJ3hhB_75mN3u7s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerService$1$PB6H1df6VvLzUJ3hhB_75mN3u7s;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/role/-$$Lambda$RoleControllerService$1$PB6H1df6VvLzUJ3hhB_75mN3u7s;

    invoke-direct {v0}, Landroid/app/role/-$$Lambda$RoleControllerService$1$PB6H1df6VvLzUJ3hhB_75mN3u7s;-><init>()V

    sput-object v0, Landroid/app/role/-$$Lambda$RoleControllerService$1$PB6H1df6VvLzUJ3hhB_75mN3u7s;->INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerService$1$PB6H1df6VvLzUJ3hhB_75mN3u7s;

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

    invoke-static {p1, p2, p3, p4, p5}, Landroid/app/role/RoleControllerService$1;->lambda$onRemoveRoleHolder$2(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void
.end method
