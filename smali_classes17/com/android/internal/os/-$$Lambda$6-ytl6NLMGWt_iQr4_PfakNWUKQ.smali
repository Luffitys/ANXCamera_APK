.class public final synthetic Lcom/android/internal/os/-$$Lambda$6-ytl6NLMGWt_iQr4_PfakNWUKQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/os/-$$Lambda$6-ytl6NLMGWt_iQr4_PfakNWUKQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/os/-$$Lambda$6-ytl6NLMGWt_iQr4_PfakNWUKQ;

    invoke-direct {v0}, Lcom/android/internal/os/-$$Lambda$6-ytl6NLMGWt_iQr4_PfakNWUKQ;-><init>()V

    sput-object v0, Lcom/android/internal/os/-$$Lambda$6-ytl6NLMGWt_iQr4_PfakNWUKQ;->INSTANCE:Lcom/android/internal/os/-$$Lambda$6-ytl6NLMGWt_iQr4_PfakNWUKQ;

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

    invoke-static {}, Landroid/content/type/DefaultMimeMapFactory;->create()Llibcore/content/type/MimeMap;

    move-result-object v0

    return-object v0
.end method
