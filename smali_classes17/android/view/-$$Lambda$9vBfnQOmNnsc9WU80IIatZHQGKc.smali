.class public final synthetic Landroid/view/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;

    invoke-direct {v0}, Landroid/view/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;-><init>()V

    sput-object v0, Landroid/view/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;->INSTANCE:Landroid/view/-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc;

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

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object v0
.end method
