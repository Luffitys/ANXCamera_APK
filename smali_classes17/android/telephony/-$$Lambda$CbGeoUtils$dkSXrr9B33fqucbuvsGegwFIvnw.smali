.class public final synthetic Landroid/telephony/-$$Lambda$CbGeoUtils$dkSXrr9B33fqucbuvsGegwFIvnw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/telephony/-$$Lambda$CbGeoUtils$dkSXrr9B33fqucbuvsGegwFIvnw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/-$$Lambda$CbGeoUtils$dkSXrr9B33fqucbuvsGegwFIvnw;

    invoke-direct {v0}, Landroid/telephony/-$$Lambda$CbGeoUtils$dkSXrr9B33fqucbuvsGegwFIvnw;-><init>()V

    sput-object v0, Landroid/telephony/-$$Lambda$CbGeoUtils$dkSXrr9B33fqucbuvsGegwFIvnw;->INSTANCE:Landroid/telephony/-$$Lambda$CbGeoUtils$dkSXrr9B33fqucbuvsGegwFIvnw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/CbGeoUtils;->lambda$encodeGeometriesToString$1(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
