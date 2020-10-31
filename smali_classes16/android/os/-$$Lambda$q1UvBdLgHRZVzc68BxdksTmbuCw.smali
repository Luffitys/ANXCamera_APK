.class public final synthetic Landroid/os/-$$Lambda$q1UvBdLgHRZVzc68BxdksTmbuCw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/BatteryStats$IntToString;


# static fields
.field public static final synthetic INSTANCE:Landroid/os/-$$Lambda$q1UvBdLgHRZVzc68BxdksTmbuCw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/-$$Lambda$q1UvBdLgHRZVzc68BxdksTmbuCw;

    invoke-direct {v0}, Landroid/os/-$$Lambda$q1UvBdLgHRZVzc68BxdksTmbuCw;-><init>()V

    sput-object v0, Landroid/os/-$$Lambda$q1UvBdLgHRZVzc68BxdksTmbuCw;->INSTANCE:Landroid/os/-$$Lambda$q1UvBdLgHRZVzc68BxdksTmbuCw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsString(I)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
