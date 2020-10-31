.class public final synthetic Landroid/view/-$$Lambda$FocusFinder$P8rLvOJhymJH5ALAgUjGaM5gxKA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/-$$Lambda$FocusFinder$P8rLvOJhymJH5ALAgUjGaM5gxKA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/-$$Lambda$FocusFinder$P8rLvOJhymJH5ALAgUjGaM5gxKA;

    invoke-direct {v0}, Landroid/view/-$$Lambda$FocusFinder$P8rLvOJhymJH5ALAgUjGaM5gxKA;-><init>()V

    sput-object v0, Landroid/view/-$$Lambda$FocusFinder$P8rLvOJhymJH5ALAgUjGaM5gxKA;->INSTANCE:Landroid/view/-$$Lambda$FocusFinder$P8rLvOJhymJH5ALAgUjGaM5gxKA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 3

    invoke-static {p1, p2}, Landroid/view/FocusFinder;->lambda$new$1(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
