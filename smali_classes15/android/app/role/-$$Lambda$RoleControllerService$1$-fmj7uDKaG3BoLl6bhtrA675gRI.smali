.class public final synthetic Landroid/app/role/-$$Lambda$RoleControllerService$1$-fmj7uDKaG3BoLl6bhtrA675gRI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerService$1$-fmj7uDKaG3BoLl6bhtrA675gRI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/role/-$$Lambda$RoleControllerService$1$-fmj7uDKaG3BoLl6bhtrA675gRI;

    invoke-direct {v0}, Landroid/app/role/-$$Lambda$RoleControllerService$1$-fmj7uDKaG3BoLl6bhtrA675gRI;-><init>()V

    sput-object v0, Landroid/app/role/-$$Lambda$RoleControllerService$1$-fmj7uDKaG3BoLl6bhtrA675gRI;->INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerService$1$-fmj7uDKaG3BoLl6bhtrA675gRI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/app/role/RoleControllerService;

    check-cast p2, Landroid/os/RemoteCallback;

    invoke-static {p1, p2}, Landroid/app/role/RoleControllerService$1;->lambda$grantDefaultRoles$0(Ljava/lang/Object;Landroid/os/RemoteCallback;)V

    return-void
.end method
