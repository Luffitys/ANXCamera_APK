.class public final synthetic Lcom/android/internal/widget/-$$Lambda$ConversationLayout$91w9mxxWjJCx1-VJg9iaby_YQ30;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/ConversationLayout;

.field public final synthetic f$1:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$91w9mxxWjJCx1-VJg9iaby_YQ30;->f$0:Lcom/android/internal/widget/ConversationLayout;

    iput-object p2, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$91w9mxxWjJCx1-VJg9iaby_YQ30;->f$1:Landroid/graphics/drawable/GradientDrawable;

    iput p3, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$91w9mxxWjJCx1-VJg9iaby_YQ30;->f$2:I

    iput p4, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$91w9mxxWjJCx1-VJg9iaby_YQ30;->f$3:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$91w9mxxWjJCx1-VJg9iaby_YQ30;->f$0:Lcom/android/internal/widget/ConversationLayout;

    iget-object v1, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$91w9mxxWjJCx1-VJg9iaby_YQ30;->f$1:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$91w9mxxWjJCx1-VJg9iaby_YQ30;->f$2:I

    iget v3, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$91w9mxxWjJCx1-VJg9iaby_YQ30;->f$3:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/widget/ConversationLayout;->lambda$setIsImportantConversation$5$ConversationLayout(Landroid/graphics/drawable/GradientDrawable;IILandroid/animation/ValueAnimator;)V

    return-void
.end method
