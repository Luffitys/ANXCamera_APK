.class public interface abstract Lcom/android/internal/widget/IMessagingLayout;
.super Ljava/lang/Object;
.source "IMessagingLayout.java"


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getMessagingGroups()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;
.end method

.method public abstract setMessagingClippingDisabled(Z)V
.end method
