.class public final synthetic Landroid/util/apk/-$$Lambda$SourceStampVerifier$iTSqvmQISl76OGD-hCNerhN3N2A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/util/apk/-$$Lambda$SourceStampVerifier$iTSqvmQISl76OGD-hCNerhN3N2A;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/apk/-$$Lambda$SourceStampVerifier$iTSqvmQISl76OGD-hCNerhN3N2A;

    invoke-direct {v0}, Landroid/util/apk/-$$Lambda$SourceStampVerifier$iTSqvmQISl76OGD-hCNerhN3N2A;-><init>()V

    sput-object v0, Landroid/util/apk/-$$Lambda$SourceStampVerifier$iTSqvmQISl76OGD-hCNerhN3N2A;->INSTANCE:Landroid/util/apk/-$$Lambda$SourceStampVerifier$iTSqvmQISl76OGD-hCNerhN3N2A;

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

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Landroid/util/apk/SourceStampVerifier;->lambda$getApkDigests$0(Landroid/util/Pair;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
