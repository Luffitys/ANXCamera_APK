.class public final synthetic Landroid/os/-$$Lambda$StrictMode$lu9ekkHJ2HMz0jd3F8K8MnhenxQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/os/-$$Lambda$StrictMode$lu9ekkHJ2HMz0jd3F8K8MnhenxQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/-$$Lambda$StrictMode$lu9ekkHJ2HMz0jd3F8K8MnhenxQ;

    invoke-direct {v0}, Landroid/os/-$$Lambda$StrictMode$lu9ekkHJ2HMz0jd3F8K8MnhenxQ;-><init>()V

    sput-object v0, Landroid/os/-$$Lambda$StrictMode$lu9ekkHJ2HMz0jd3F8K8MnhenxQ;->INSTANCE:Landroid/os/-$$Lambda$StrictMode$lu9ekkHJ2HMz0jd3F8K8MnhenxQ;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/os/StrictMode;->lambda$static$1(Ljava/lang/String;)V

    return-void
.end method
