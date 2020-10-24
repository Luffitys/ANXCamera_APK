.class Lmiuix/preference/ConnectPreferenceHelper$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lmiuix/preference/ConnectPreferenceHelper;


# direct methods
.method constructor <init>(Lmiuix/preference/ConnectPreferenceHelper;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$5;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$5;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-static {p1}, Lmiuix/preference/ConnectPreferenceHelper;->access$500(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$5;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-static {p1}, Lmiuix/preference/ConnectPreferenceHelper;->access$500(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper$5;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-static {p0}, Lmiuix/preference/ConnectPreferenceHelper;->access$500(Lmiuix/preference/ConnectPreferenceHelper;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
