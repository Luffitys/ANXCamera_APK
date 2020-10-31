.class public final synthetic Lcom/android/internal/util/-$$Lambda$ProviderAccessStats$9AhC6lKURctNKuYjVd-wu7jn6_c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/util/-$$Lambda$ProviderAccessStats$9AhC6lKURctNKuYjVd-wu7jn6_c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/util/-$$Lambda$ProviderAccessStats$9AhC6lKURctNKuYjVd-wu7jn6_c;

    invoke-direct {v0}, Lcom/android/internal/util/-$$Lambda$ProviderAccessStats$9AhC6lKURctNKuYjVd-wu7jn6_c;-><init>()V

    sput-object v0, Lcom/android/internal/util/-$$Lambda$ProviderAccessStats$9AhC6lKURctNKuYjVd-wu7jn6_c;->INSTANCE:Lcom/android/internal/util/-$$Lambda$ProviderAccessStats$9AhC6lKURctNKuYjVd-wu7jn6_c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/android/internal/util/ProviderAccessStats;->lambda$new$0()Lcom/android/internal/util/ProviderAccessStats$PerThreadData;

    move-result-object v0

    return-object v0
.end method
