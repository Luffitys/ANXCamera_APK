.class Lmiuix/preference/ConnectPreferenceHelper$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lmiuix/preference/ConnectPreferenceHelper;


# direct methods
.method constructor <init>(Lmiuix/preference/ConnectPreferenceHelper;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$4;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper$4;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-static {p0}, Lmiuix/preference/ConnectPreferenceHelper;->access$400(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
