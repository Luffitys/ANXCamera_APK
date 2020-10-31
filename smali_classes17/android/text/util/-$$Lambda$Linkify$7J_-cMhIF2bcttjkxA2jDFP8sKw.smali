.class public final synthetic Landroid/text/util/-$$Lambda$Linkify$7J_-cMhIF2bcttjkxA2jDFP8sKw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/text/util/-$$Lambda$Linkify$7J_-cMhIF2bcttjkxA2jDFP8sKw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/text/util/-$$Lambda$Linkify$7J_-cMhIF2bcttjkxA2jDFP8sKw;

    invoke-direct {v0}, Landroid/text/util/-$$Lambda$Linkify$7J_-cMhIF2bcttjkxA2jDFP8sKw;-><init>()V

    sput-object v0, Landroid/text/util/-$$Lambda$Linkify$7J_-cMhIF2bcttjkxA2jDFP8sKw;->INSTANCE:Landroid/text/util/-$$Lambda$Linkify$7J_-cMhIF2bcttjkxA2jDFP8sKw;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/util/Linkify;->lambda$static$0(Ljava/lang/String;)Landroid/text/style/URLSpan;

    move-result-object p1

    return-object p1
.end method
