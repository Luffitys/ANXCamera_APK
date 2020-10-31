.class public final synthetic Landroid/location/-$$Lambda$AbstractListenerManager$Registration$XpiThbVaDDpOnFWIkrt38Bf4yx0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/location/-$$Lambda$AbstractListenerManager$Registration$XpiThbVaDDpOnFWIkrt38Bf4yx0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/-$$Lambda$AbstractListenerManager$Registration$XpiThbVaDDpOnFWIkrt38Bf4yx0;

    invoke-direct {v0}, Landroid/location/-$$Lambda$AbstractListenerManager$Registration$XpiThbVaDDpOnFWIkrt38Bf4yx0;-><init>()V

    sput-object v0, Landroid/location/-$$Lambda$AbstractListenerManager$Registration$XpiThbVaDDpOnFWIkrt38Bf4yx0;->INSTANCE:Landroid/location/-$$Lambda$AbstractListenerManager$Registration$XpiThbVaDDpOnFWIkrt38Bf4yx0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/location/AbstractListenerManager$Registration;

    check-cast p2, Ljava/util/function/Consumer;

    invoke-static {p1, p2}, Landroid/location/AbstractListenerManager$Registration;->lambda$XpiThbVaDDpOnFWIkrt38Bf4yx0(Landroid/location/AbstractListenerManager$Registration;Ljava/util/function/Consumer;)V

    return-void
.end method
