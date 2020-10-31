.class public final synthetic Lcom/android/internal/infra/-$$Lambda$aeiZbEpH6rq4kD9vJrlAnboJGDM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/infra/-$$Lambda$aeiZbEpH6rq4kD9vJrlAnboJGDM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/infra/-$$Lambda$aeiZbEpH6rq4kD9vJrlAnboJGDM;

    invoke-direct {v0}, Lcom/android/internal/infra/-$$Lambda$aeiZbEpH6rq4kD9vJrlAnboJGDM;-><init>()V

    sput-object v0, Lcom/android/internal/infra/-$$Lambda$aeiZbEpH6rq4kD9vJrlAnboJGDM;->INSTANCE:Lcom/android/internal/infra/-$$Lambda$aeiZbEpH6rq4kD9vJrlAnboJGDM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lcom/android/internal/infra/RemoteStream;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method
