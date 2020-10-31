.class public final synthetic Lcom/android/internal/app/-$$Lambda$vbUiOaY5W_R3oio_uxy-QbdJwl0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/app/-$$Lambda$vbUiOaY5W_R3oio_uxy-QbdJwl0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/app/-$$Lambda$vbUiOaY5W_R3oio_uxy-QbdJwl0;

    invoke-direct {v0}, Lcom/android/internal/app/-$$Lambda$vbUiOaY5W_R3oio_uxy-QbdJwl0;-><init>()V

    sput-object v0, Lcom/android/internal/app/-$$Lambda$vbUiOaY5W_R3oio_uxy-QbdJwl0;->INSTANCE:Lcom/android/internal/app/-$$Lambda$vbUiOaY5W_R3oio_uxy-QbdJwl0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    return-object p1
.end method
