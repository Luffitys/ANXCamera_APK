.class public final synthetic Landroid/net/-$$Lambda$p1_56lwnt1xBuY1muPblbN1Dtkw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/NetworkCapabilities$NameOf;


# static fields
.field public static final synthetic INSTANCE:Landroid/net/-$$Lambda$p1_56lwnt1xBuY1muPblbN1Dtkw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/-$$Lambda$p1_56lwnt1xBuY1muPblbN1Dtkw;

    invoke-direct {v0}, Landroid/net/-$$Lambda$p1_56lwnt1xBuY1muPblbN1Dtkw;-><init>()V

    sput-object v0, Landroid/net/-$$Lambda$p1_56lwnt1xBuY1muPblbN1Dtkw;->INSTANCE:Landroid/net/-$$Lambda$p1_56lwnt1xBuY1muPblbN1Dtkw;

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

    invoke-static {p1}, Landroid/net/NetworkCapabilities;->capabilityNameOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
