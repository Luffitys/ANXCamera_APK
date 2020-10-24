.class Lmiuix/preference/ConnectPreferenceHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lmiuix/preference/ConnectPreferenceHelper;


# direct methods
.method constructor <init>(Lmiuix/preference/ConnectPreferenceHelper;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$1;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper$1;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-static {v0}, Lmiuix/preference/ConnectPreferenceHelper;->access$000(Lmiuix/preference/ConnectPreferenceHelper;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/preference/ConnectPreferenceHelper$1;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-static {p0}, Lmiuix/preference/ConnectPreferenceHelper;->access$100(Lmiuix/preference/ConnectPreferenceHelper;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method
