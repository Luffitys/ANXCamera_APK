.class public final synthetic Landroid/app/-$$Lambda$SystemServiceRegistry$16$s6mZ42tuGUunhKa_5iwjLY5FGdM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/-$$Lambda$SystemServiceRegistry$16$s6mZ42tuGUunhKa_5iwjLY5FGdM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/-$$Lambda$SystemServiceRegistry$16$s6mZ42tuGUunhKa_5iwjLY5FGdM;

    invoke-direct {v0}, Landroid/app/-$$Lambda$SystemServiceRegistry$16$s6mZ42tuGUunhKa_5iwjLY5FGdM;-><init>()V

    sput-object v0, Landroid/app/-$$Lambda$SystemServiceRegistry$16$s6mZ42tuGUunhKa_5iwjLY5FGdM;->INSTANCE:Landroid/app/-$$Lambda$SystemServiceRegistry$16$s6mZ42tuGUunhKa_5iwjLY5FGdM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Landroid/app/SystemServiceRegistry$16;->lambda$createService$0()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
