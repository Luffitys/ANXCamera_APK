.class Lcom/miui/mishare/app/view/MiShareDeviceView$5;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "MiShareDeviceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceWaiting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/mishare/app/view/MiShareDeviceView;

.field final synthetic val$waitingDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method constructor <init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$5;->this$0:Lcom/miui/mishare/app/view/MiShareDeviceView;

    iput-object p2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$5;->val$waitingDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$5;->val$waitingDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method
