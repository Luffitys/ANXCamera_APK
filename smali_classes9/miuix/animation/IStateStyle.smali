.class public interface abstract Lmiuix/animation/IStateStyle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiuix/animation/IStateContainer;


# virtual methods
.method public varargs abstract add(Ljava/lang/String;Ljava/lang/Object;[J)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract add(Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;[J)Lmiuix/animation/IStateStyle;
.end method

.method public abstract addInitProperty(Ljava/lang/String;Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
.end method

.method public abstract addInitProperty(Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
.end method

.method public abstract addListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract autoSetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
.end method

.method public abstract getCurrentState()Lmiuix/animation/controller/AnimState;
.end method

.method public varargs abstract predictDuration([Ljava/lang/Object;)J
.end method

.method public abstract removeListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;
.end method

.method public abstract set(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract setConfig(Lmiuix/animation/base/AnimConfig;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract setEase(I[F)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract setEase(Lmiuix/animation/property/FloatProperty;I[F)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
.end method

.method public abstract setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract setTransitionFlags(J[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
.end method

.method public abstract setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract then(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract then([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
.end method

.method public varargs abstract to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
.end method
