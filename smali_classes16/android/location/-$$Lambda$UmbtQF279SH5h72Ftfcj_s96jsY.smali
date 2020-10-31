.class public final synthetic Landroid/location/-$$Lambda$UmbtQF279SH5h72Ftfcj_s96jsY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/location/-$$Lambda$UmbtQF279SH5h72Ftfcj_s96jsY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/-$$Lambda$UmbtQF279SH5h72Ftfcj_s96jsY;

    invoke-direct {v0}, Landroid/location/-$$Lambda$UmbtQF279SH5h72Ftfcj_s96jsY;-><init>()V

    sput-object v0, Landroid/location/-$$Lambda$UmbtQF279SH5h72Ftfcj_s96jsY;->INSTANCE:Landroid/location/-$$Lambda$UmbtQF279SH5h72Ftfcj_s96jsY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/location/GnssStatus$Callback;

    invoke-virtual {p1}, Landroid/location/GnssStatus$Callback;->onStopped()V

    return-void
.end method
