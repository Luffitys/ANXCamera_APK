.class public final synthetic Landroid/graphics/-$$Lambda$ColorSpace$S2rlqJvkXGTpUF6mZhvkElds8JE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# static fields
.field public static final synthetic INSTANCE:Landroid/graphics/-$$Lambda$ColorSpace$S2rlqJvkXGTpUF6mZhvkElds8JE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/-$$Lambda$ColorSpace$S2rlqJvkXGTpUF6mZhvkElds8JE;

    invoke-direct {v0}, Landroid/graphics/-$$Lambda$ColorSpace$S2rlqJvkXGTpUF6mZhvkElds8JE;-><init>()V

    sput-object v0, Landroid/graphics/-$$Lambda$ColorSpace$S2rlqJvkXGTpUF6mZhvkElds8JE;->INSTANCE:Landroid/graphics/-$$Lambda$ColorSpace$S2rlqJvkXGTpUF6mZhvkElds8JE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .registers 3

    invoke-static {p1, p2}, Landroid/graphics/ColorSpace;->lambda$static$1(D)D

    move-result-wide p1

    return-wide p1
.end method
