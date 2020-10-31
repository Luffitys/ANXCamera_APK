.class public final synthetic Landroid/os/-$$Lambda$StrictMode$1yH8AK0bTwVwZOb9x8HoiSBdzr0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/StrictMode$ViolationLogger;


# static fields
.field public static final synthetic INSTANCE:Landroid/os/-$$Lambda$StrictMode$1yH8AK0bTwVwZOb9x8HoiSBdzr0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/-$$Lambda$StrictMode$1yH8AK0bTwVwZOb9x8HoiSBdzr0;

    invoke-direct {v0}, Landroid/os/-$$Lambda$StrictMode$1yH8AK0bTwVwZOb9x8HoiSBdzr0;-><init>()V

    sput-object v0, Landroid/os/-$$Lambda$StrictMode$1yH8AK0bTwVwZOb9x8HoiSBdzr0;->INSTANCE:Landroid/os/-$$Lambda$StrictMode$1yH8AK0bTwVwZOb9x8HoiSBdzr0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final log(Landroid/os/StrictMode$ViolationInfo;)V
    .registers 2

    invoke-static {p1}, Landroid/os/StrictMode;->lambda$static$0(Landroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method
