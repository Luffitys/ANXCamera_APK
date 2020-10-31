.class interface abstract annotation Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl$InitializationPhase;
.super Ljava/lang/Object;
.source "MultiClientInputMethodServiceDelegateImpl.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/MultiClientInputMethodServiceDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "InitializationPhase"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final INITIALIZE_CALLED:I = 0x3

.field public static final INSTANTIATED:I = 0x1

.field public static final ON_BIND_CALLED:I = 0x2

.field public static final ON_DESTROY_CALLED:I = 0x5

.field public static final ON_UNBIND_CALLED:I = 0x4
