.class public final synthetic Landroid/app/role/-$$Lambda$RoleControllerManager$Jsb4ev7pHUqel8_lglNSRLiUzpg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerManager$Jsb4ev7pHUqel8_lglNSRLiUzpg;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/role/-$$Lambda$RoleControllerManager$Jsb4ev7pHUqel8_lglNSRLiUzpg;

    invoke-direct {v0}, Landroid/app/role/-$$Lambda$RoleControllerManager$Jsb4ev7pHUqel8_lglNSRLiUzpg;-><init>()V

    sput-object v0, Landroid/app/role/-$$Lambda$RoleControllerManager$Jsb4ev7pHUqel8_lglNSRLiUzpg;->INSTANCE:Landroid/app/role/-$$Lambda$RoleControllerManager$Jsb4ev7pHUqel8_lglNSRLiUzpg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/app/role/IRoleController;

    invoke-static {p1}, Landroid/app/role/RoleControllerManager;->lambda$grantDefaultRoles$0(Landroid/app/role/IRoleController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
