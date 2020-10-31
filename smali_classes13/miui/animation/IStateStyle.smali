.class public interface abstract Lmiui/animation/IStateStyle;
.super Ljava/lang/Object;
.source "IStateStyle.java"

# interfaces
.implements Lmiui/animation/IStateContainer;


# virtual methods
.method public varargs abstract add(Ljava/lang/String;Ljava/lang/Object;[J)Lmiui/animation/IStateStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;[J)",
            "Lmiui/animation/IStateStyle;"
        }
    .end annotation
.end method

.method public varargs abstract add(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;[J)Lmiui/animation/IStateStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/animation/property/FloatProperty;",
            "TT;[J)",
            "Lmiui/animation/IStateStyle;"
        }
    .end annotation
.end method

.method public abstract addInitProperty(Ljava/lang/String;Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lmiui/animation/IStateStyle;"
        }
    .end annotation
.end method

.method public abstract addInitProperty(Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Lmiui/animation/IStateStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/animation/property/FloatProperty;",
            "TT;)",
            "Lmiui/animation/IStateStyle;"
        }
    .end annotation
.end method

.method public abstract addListener(Lmiui/animation/listener/TransitionListener;)Lmiui/animation/IStateStyle;
.end method

.method public varargs abstract autoSetTo([Ljava/lang/Object;)Lmiui/animation/IStateStyle;
.end method

.method public varargs abstract fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
.end method

.method public abstract getCurrentState()Lmiui/animation/controller/AnimState;
.end method

.method public varargs abstract predictDuration([Ljava/lang/Object;)J
.end method

.method public abstract removeListener(Lmiui/animation/listener/TransitionListener;)Lmiui/animation/IStateStyle;
.end method

.method public abstract set(Ljava/lang/Object;)Lmiui/animation/IStateStyle;
.end method

.method public varargs abstract setConfig(Lmiui/animation/base/AnimConfig;[Lmiui/animation/property/FloatProperty;)Lmiui/animation/IStateStyle;
.end method

.method public varargs abstract setEase(I[F)Lmiui/animation/IStateStyle;
.end method

.method public varargs abstract setEase(Lmiui/animation/property/FloatProperty;I[F)Lmiui/animation/IStateStyle;
.end method

.method public varargs abstract setEase(Lmiui/animation/utils/EaseManager$EaseStyle;[Lmiui/animation/property/FloatProperty;)Lmiui/animation/IStateStyle;
.end method

.method public abstract setTo(Ljava/lang/Object;)Lmiui/animation/IStateStyle;
.end method

.method public varargs abstract setTo(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
.end method

.method public varargs abstract setTo([Ljava/lang/Object;)Lmiui/animation/IStateStyle;
.end method

.method public varargs abstract setTransitionFlags(J[Lmiui/animation/property/FloatProperty;)Lmiui/animation/IStateStyle;
.end method

.method public abstract setup(Ljava/lang/Object;)Lmiui/animation/IStateStyle;
.end method

.method public varargs abstract then(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
.end method

.method public varargs abstract then([Ljava/lang/Object;)Lmiui/animation/IStateStyle;
.end method

.method public varargs abstract to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
.end method

.method public varargs abstract to([Ljava/lang/Object;)Lmiui/animation/IStateStyle;
.end method

.method public varargs abstract to([Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;
.end method
