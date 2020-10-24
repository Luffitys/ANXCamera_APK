.class Lmiuix/preference/ConnectPreferenceHelper$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lmiuix/preference/ConnectPreferenceHelper;


# direct methods
.method constructor <init>(Lmiuix/preference/ConnectPreferenceHelper;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$3;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper$3;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-static {v0}, Lmiuix/preference/ConnectPreferenceHelper;->access$300(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper$3;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-static {p0}, Lmiuix/preference/ConnectPreferenceHelper;->access$300(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
