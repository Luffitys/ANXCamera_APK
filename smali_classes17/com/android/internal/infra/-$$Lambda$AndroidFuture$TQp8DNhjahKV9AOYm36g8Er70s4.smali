.class public final synthetic Lcom/android/internal/infra/-$$Lambda$AndroidFuture$TQp8DNhjahKV9AOYm36g8Er70s4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/infra/-$$Lambda$AndroidFuture$TQp8DNhjahKV9AOYm36g8Er70s4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/infra/-$$Lambda$AndroidFuture$TQp8DNhjahKV9AOYm36g8Er70s4;

    invoke-direct {v0}, Lcom/android/internal/infra/-$$Lambda$AndroidFuture$TQp8DNhjahKV9AOYm36g8Er70s4;-><init>()V

    sput-object v0, Lcom/android/internal/infra/-$$Lambda$AndroidFuture$TQp8DNhjahKV9AOYm36g8Er70s4;->INSTANCE:Lcom/android/internal/infra/-$$Lambda$AndroidFuture$TQp8DNhjahKV9AOYm36g8Er70s4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ljava/lang/Void;

    invoke-static {p1, p2}, Lcom/android/internal/infra/AndroidFuture;->lambda$thenCombine$1(Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
