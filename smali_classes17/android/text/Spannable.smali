.class public interface abstract Landroid/text/Spannable;
.super Ljava/lang/Object;
.source "Spannable.java"

# interfaces
.implements Landroid/text/Spanned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Spannable$Factory;
    }
.end annotation


# virtual methods
.method public abstract removeSpan(Ljava/lang/Object;)V
.end method

.method public removeSpan(Ljava/lang/Object;I)V
    .registers 3

    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract setSpan(Ljava/lang/Object;III)V
.end method
