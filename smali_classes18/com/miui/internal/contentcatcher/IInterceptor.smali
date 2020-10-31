.class public interface abstract Lcom/miui/internal/contentcatcher/IInterceptor;
.super Ljava/lang/Object;
.source "IInterceptor.java"


# virtual methods
.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;Landroid/view/View;Landroid/app/Activity;)Z
.end method

.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)Z
.end method

.method public abstract notifyActivityCreate()V
.end method

.method public abstract notifyActivityDestroy()V
.end method

.method public abstract notifyActivityPause()V
.end method

.method public abstract notifyActivityResume()V
.end method

.method public abstract notifyActivityStart()V
.end method

.method public abstract notifyActivityStop()V
.end method

.method public abstract notifyContentChange()V
.end method

.method public abstract notifyWebView(Landroid/view/View;Z)V
.end method

.method public abstract setWebView(Landroid/view/View;Z)V
.end method
