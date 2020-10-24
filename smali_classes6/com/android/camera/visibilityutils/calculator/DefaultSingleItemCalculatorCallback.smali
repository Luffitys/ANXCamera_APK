.class public Lcom/android/camera/visibilityutils/calculator/DefaultSingleItemCalculatorCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/visibilityutils/calculator/SingleListViewItemActiveCalculator$Callback;


# static fields
.field private static final SHOW_LOGS:Z = false

.field private static final TAG:Ljava/lang/String; = "DefaultSingleItemCalculatorCallback"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateNewCurrentItem(Lcom/android/camera/visibilityutils/items/ListItem;Landroid/view/View;I)V
    .locals 0

    invoke-interface {p1, p2, p3}, Lcom/android/camera/visibilityutils/items/ListItem;->setActive(Landroid/view/View;I)V

    return-void
.end method

.method public deactivateCurrentItem(Lcom/android/camera/visibilityutils/items/ListItem;Landroid/view/View;I)V
    .locals 0

    invoke-interface {p1, p2, p3}, Lcom/android/camera/visibilityutils/items/ListItem;->deactivate(Landroid/view/View;I)V

    return-void
.end method
