.class public final synthetic Landroid/net/-$$Lambda$NetworkStats$2M4nCfjROiI-VTvfv7lrr6g7K6Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/net/-$$Lambda$NetworkStats$2M4nCfjROiI-VTvfv7lrr6g7K6Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/-$$Lambda$NetworkStats$2M4nCfjROiI-VTvfv7lrr6g7K6Y;

    invoke-direct {v0}, Landroid/net/-$$Lambda$NetworkStats$2M4nCfjROiI-VTvfv7lrr6g7K6Y;-><init>()V

    sput-object v0, Landroid/net/-$$Lambda$NetworkStats$2M4nCfjROiI-VTvfv7lrr6g7K6Y;->INSTANCE:Landroid/net/-$$Lambda$NetworkStats$2M4nCfjROiI-VTvfv7lrr6g7K6Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/net/NetworkStats$Entry;

    invoke-static {p1}, Landroid/net/NetworkStats;->lambda$filterDebugEntries$3(Landroid/net/NetworkStats$Entry;)Z

    move-result p1

    return p1
.end method
