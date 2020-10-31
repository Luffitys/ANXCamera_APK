.class public final synthetic Landroid/net/-$$Lambda$FpGXkd3pLxeXY58eJ_84mi1PLWQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/NetworkCapabilities$NameOf;


# static fields
.field public static final synthetic INSTANCE:Landroid/net/-$$Lambda$FpGXkd3pLxeXY58eJ_84mi1PLWQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/-$$Lambda$FpGXkd3pLxeXY58eJ_84mi1PLWQ;

    invoke-direct {v0}, Landroid/net/-$$Lambda$FpGXkd3pLxeXY58eJ_84mi1PLWQ;-><init>()V

    sput-object v0, Landroid/net/-$$Lambda$FpGXkd3pLxeXY58eJ_84mi1PLWQ;->INSTANCE:Landroid/net/-$$Lambda$FpGXkd3pLxeXY58eJ_84mi1PLWQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final nameOf(I)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
