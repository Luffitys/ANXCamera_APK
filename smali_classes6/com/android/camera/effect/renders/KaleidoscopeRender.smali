.class public Lcom/android/camera/effect/renders/KaleidoscopeRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source ""


# static fields
.field private static final DOUBLE_FLIP:I = 0x3

.field private static final FRAG:Ljava/lang/String; = "precision highp float;\n#define PI 3.1415926\nuniform int uMode;\nuniform vec2 uResolution;\nuniform float uRotation;\nuniform sampler2D sTexture;\nvarying vec2 vTexCoord;\nint H_FLIP = 0x01;\nint V_FLIP = 0x02;\nint DOUBLE_FLIP = 0x03;\nint QUADRUPLE = 0x04;\nint SEXTUPLE = 0x05;\nint REPEATED = 0x06;\nvec2 rotateUV(vec2 uv, float rotation, float mid){\n    float ratio = (uResolution.x / uResolution.y);\n    float s = sin ( rotation );\n    float c = cos ( rotation );\n    mat2 rotationMatrix = mat2( c, -s, s, c);\n    vec2 coord = vec2((uv.x - mid) * ratio ,(uv.y -mid)*1.0);\n    vec2 scaled = rotationMatrix * coord;\n    return vec2(scaled.x / ratio + mid,scaled.y + mid);\n}\nvec2 scaleUV(vec2 uv, float scale){\n    return (uv - vec2(0.5,0.5))*scale + vec2(0.5,0.5);\n}\nvoid main() {\n    vec2 p = vTexCoord;\n    vec2 uv = vTexCoord;\n    if(uMode==H_FLIP){\n        if(uv.x < 0.5){\n           p.x = 1.0 - p.x;\n        }\n        p.x -= 0.25;\n        gl_FragColor = texture2D(sTexture, p);\n    }\n    else if(uMode==V_FLIP){\n        if(uv.y > 0.5){\n           p.y = 1.0 - p.y;\n        }\n        p.y += 0.25;\n        gl_FragColor = texture2D(sTexture, p);\n    }\n    else if(uMode==DOUBLE_FLIP){\n        if(uv.x < 0.5){\n           p.x = 1.0 - p.x;\n        }\n        p.x -= 0.25;\n        if(uv.y > 0.5){\n           p.y = 1.0 - p.y;\n        }\n        p.y += 0.25;\n        gl_FragColor = texture2D(sTexture, p);\n    }\n    else if(uMode==QUADRUPLE){\n        float alpha = (uResolution.y - (uResolution.y - uResolution.x)/2.0)/uResolution.y;\n        float beta = ((uResolution.y - uResolution.x)/2.0)/uResolution.y;\n        if(p.y < p.x && p.x + p.y < 1.0){\n            //keep origin\n            //top\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y > p.x && p.x + p.y > 1.0){\n            //rotation PI\n            //bottom\n            uv = rotateUV(uv,PI,0.5);\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y < p.x && p.x + p.y > 1.0){\n            //rotation -90\n            //right\n            if(p.y > alpha)\n            {\n               uv = rotateUV(p,PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x += 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else if(p.y < beta)\n           {\n               uv = rotateUV(p,PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x -= 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else\n           {\n              uv = rotateUV(p,PI/2.0,0.5);\n              uv.y += 0.25;\n              gl_FragColor = texture2D(sTexture,uv);\n           }        }\n        else{\n            //rotation -90\n            //left\n            if(p.y > alpha)\n            {\n               uv = rotateUV(p,-PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x -= 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else if(p.y < beta)\n           {\n               uv = rotateUV(p,-PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x += 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else\n           {\n              uv = rotateUV(p,-PI/2.0,0.5);\n              uv.y += 0.25;\n              gl_FragColor = texture2D(sTexture,uv);\n           }        }\n    }\n    else if(uMode==SEXTUPLE){\n        float rot = PI/2.0 - atan(uResolution.y,uResolution.x)/2.0;\n        float alpha = atan(uResolution.y,uResolution.x)/2.0;\n        float beta = atan(uResolution.x,uResolution.y);\n        if(p.y < p.x && p.x + p.y < 1.0){\n            //keep origin\n            //top\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y > p.x && p.x + p.y > 1.0){\n            //rotation PI\n            //bottom\n            uv = rotateUV(uv,PI,0.5);\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y < p.x && p.x + p.y > 1.0){\n            //rotation -90\n            //right\n            if(p.y > 0.5){\n                uv = rotateUV(uv,PI - rot,0.5);\n            }\n            else{\n                uv = rotateUV(uv,rot,0.5);\n            }\n            uv = scaleUV(uv,cos(beta)/cos(alpha));\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else{\n            //rotation -90\n            //left\n            //\n            if(p.y > 0.5){\n                uv = rotateUV(uv,rot -PI,0.5);\n            }\n            else{\n                uv = rotateUV(uv,-rot,0.5);\n            }\n            uv = scaleUV(uv,cos(beta)/cos(alpha));\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n    }\n    else if(uMode==REPEATED){\n       float param = (1.0 - 0.9)/2.0;\n       vec2 bl = step(vec2(param,param),uv);\n       vec2 tr = step(vec2(param,param),vec2(1.0,1.0)-uv);\n       float param1 = (1.0 - 0.7)/2.0;\n       vec2 bl1 = step(vec2(param1,param1),uv);\n       vec2 tr1 = step(vec2(param1,param1),vec2(1.0,1.0)-uv);\n       float param2 = (1.0 - 0.4)/2.0;\n       vec2 bl2 = step(vec2(param2,param2),uv);\n       vec2 tr2 = step(vec2(param2,param2),vec2(1.0,1.0)-uv);\n       float xxx = bl.x*bl.y*tr.x*tr.y;\n       float xxx1 = bl1.x*bl1.y*tr1.x*tr1.y;\n       float xxx2 = bl2.x*bl2.y*tr2.x*tr2.y;\n       if(xxx < 0.5){\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n       else if(xxx >  0.5 && xxx1 < 0.5){\n           uv = scaleUV(uv,1.0/(1.0 - 2.0 * param));\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n       else if(xxx1 > 0.5 && xxx2 < 0.5){\n           uv = scaleUV(uv,1.0/(1.0 - 2.0 * param1));\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n       else{\n           uv = scaleUV(uv,1.0/(1.0 - 2.0 *param2));\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n    }    else{\n        gl_FragColor = texture2D(sTexture, uv);\n    }\n}"

.field private static final H_FLIP:I = 0x1

.field private static final QUADRUPLE:I = 0x4

.field private static final REPEATED:I = 0x6

.field private static final SEXTUPLE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "KaleidoscopeRender"

.field private static final V_FLIP:I = 0x2


# instance fields
.field private mKaleidoscopeId:I

.field private mUniformModeHandle:I

.field private mUniformResolutionHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-direct {p0, p3}, Lcom/android/camera/effect/renders/KaleidoscopeRender;->convertToKaleidoscopeEffectId(Ljava/lang/String;)V

    return-void
.end method

.method private convertToKaleidoscopeEffectId(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :pswitch_1
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :pswitch_2
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :pswitch_3
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :pswitch_4
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v5

    goto :goto_1

    :pswitch_5
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, 0x6

    iput p1, p0, Lcom/android/camera/effect/renders/KaleidoscopeRender;->mKaleidoscopeId:I

    goto :goto_2

    :cond_2
    iput v5, p0, Lcom/android/camera/effect/renders/KaleidoscopeRender;->mKaleidoscopeId:I

    goto :goto_2

    :cond_3
    iput v4, p0, Lcom/android/camera/effect/renders/KaleidoscopeRender;->mKaleidoscopeId:I

    goto :goto_2

    :cond_4
    iput v3, p0, Lcom/android/camera/effect/renders/KaleidoscopeRender;->mKaleidoscopeId:I

    goto :goto_2

    :cond_5
    iput v2, p0, Lcom/android/camera/effect/renders/KaleidoscopeRender;->mKaleidoscopeId:I

    goto :goto_2

    :cond_6
    iput v1, p0, Lcom/android/camera/effect/renders/KaleidoscopeRender;->mKaleidoscopeId:I

    :goto_2
    sget-object p1, Lcom/android/camera/effect/renders/KaleidoscopeRender;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKaleidoscope: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/effect/renders/KaleidoscopeRender;->mKaleidoscopeId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 0

    const-string p0, "precision highp float;\n#define PI 3.1415926\nuniform int uMode;\nuniform vec2 uResolution;\nuniform float uRotation;\nuniform sampler2D sTexture;\nvarying vec2 vTexCoord;\nint H_FLIP = 0x01;\nint V_FLIP = 0x02;\nint DOUBLE_FLIP = 0x03;\nint QUADRUPLE = 0x04;\nint SEXTUPLE = 0x05;\nint REPEATED = 0x06;\nvec2 rotateUV(vec2 uv, float rotation, float mid){\n    float ratio = (uResolution.x / uResolution.y);\n    float s = sin ( rotation );\n    float c = cos ( rotation );\n    mat2 rotationMatrix = mat2( c, -s, s, c);\n    vec2 coord = vec2((uv.x - mid) * ratio ,(uv.y -mid)*1.0);\n    vec2 scaled = rotationMatrix * coord;\n    return vec2(scaled.x / ratio + mid,scaled.y + mid);\n}\nvec2 scaleUV(vec2 uv, float scale){\n    return (uv - vec2(0.5,0.5))*scale + vec2(0.5,0.5);\n}\nvoid main() {\n    vec2 p = vTexCoord;\n    vec2 uv = vTexCoord;\n    if(uMode==H_FLIP){\n        if(uv.x < 0.5){\n           p.x = 1.0 - p.x;\n        }\n        p.x -= 0.25;\n        gl_FragColor = texture2D(sTexture, p);\n    }\n    else if(uMode==V_FLIP){\n        if(uv.y > 0.5){\n           p.y = 1.0 - p.y;\n        }\n        p.y += 0.25;\n        gl_FragColor = texture2D(sTexture, p);\n    }\n    else if(uMode==DOUBLE_FLIP){\n        if(uv.x < 0.5){\n           p.x = 1.0 - p.x;\n        }\n        p.x -= 0.25;\n        if(uv.y > 0.5){\n           p.y = 1.0 - p.y;\n        }\n        p.y += 0.25;\n        gl_FragColor = texture2D(sTexture, p);\n    }\n    else if(uMode==QUADRUPLE){\n        float alpha = (uResolution.y - (uResolution.y - uResolution.x)/2.0)/uResolution.y;\n        float beta = ((uResolution.y - uResolution.x)/2.0)/uResolution.y;\n        if(p.y < p.x && p.x + p.y < 1.0){\n            //keep origin\n            //top\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y > p.x && p.x + p.y > 1.0){\n            //rotation PI\n            //bottom\n            uv = rotateUV(uv,PI,0.5);\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y < p.x && p.x + p.y > 1.0){\n            //rotation -90\n            //right\n            if(p.y > alpha)\n            {\n               uv = rotateUV(p,PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x += 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else if(p.y < beta)\n           {\n               uv = rotateUV(p,PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x -= 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else\n           {\n              uv = rotateUV(p,PI/2.0,0.5);\n              uv.y += 0.25;\n              gl_FragColor = texture2D(sTexture,uv);\n           }        }\n        else{\n            //rotation -90\n            //left\n            if(p.y > alpha)\n            {\n               uv = rotateUV(p,-PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x -= 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else if(p.y < beta)\n           {\n               uv = rotateUV(p,-PI/2.0,0.5);\n               uv.x = 1.0 - uv.x;\n               uv.x += 1.0;\n               uv.y += 0.25;\n               gl_FragColor = texture2D(sTexture,uv);\n           }\n           else\n           {\n              uv = rotateUV(p,-PI/2.0,0.5);\n              uv.y += 0.25;\n              gl_FragColor = texture2D(sTexture,uv);\n           }        }\n    }\n    else if(uMode==SEXTUPLE){\n        float rot = PI/2.0 - atan(uResolution.y,uResolution.x)/2.0;\n        float alpha = atan(uResolution.y,uResolution.x)/2.0;\n        float beta = atan(uResolution.x,uResolution.y);\n        if(p.y < p.x && p.x + p.y < 1.0){\n            //keep origin\n            //top\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y > p.x && p.x + p.y > 1.0){\n            //rotation PI\n            //bottom\n            uv = rotateUV(uv,PI,0.5);\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else if(p.y < p.x && p.x + p.y > 1.0){\n            //rotation -90\n            //right\n            if(p.y > 0.5){\n                uv = rotateUV(uv,PI - rot,0.5);\n            }\n            else{\n                uv = rotateUV(uv,rot,0.5);\n            }\n            uv = scaleUV(uv,cos(beta)/cos(alpha));\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n        else{\n            //rotation -90\n            //left\n            //\n            if(p.y > 0.5){\n                uv = rotateUV(uv,rot -PI,0.5);\n            }\n            else{\n                uv = rotateUV(uv,-rot,0.5);\n            }\n            uv = scaleUV(uv,cos(beta)/cos(alpha));\n            uv.y += 0.25;\n            gl_FragColor = texture2D(sTexture,uv);\n        }\n    }\n    else if(uMode==REPEATED){\n       float param = (1.0 - 0.9)/2.0;\n       vec2 bl = step(vec2(param,param),uv);\n       vec2 tr = step(vec2(param,param),vec2(1.0,1.0)-uv);\n       float param1 = (1.0 - 0.7)/2.0;\n       vec2 bl1 = step(vec2(param1,param1),uv);\n       vec2 tr1 = step(vec2(param1,param1),vec2(1.0,1.0)-uv);\n       float param2 = (1.0 - 0.4)/2.0;\n       vec2 bl2 = step(vec2(param2,param2),uv);\n       vec2 tr2 = step(vec2(param2,param2),vec2(1.0,1.0)-uv);\n       float xxx = bl.x*bl.y*tr.x*tr.y;\n       float xxx1 = bl1.x*bl1.y*tr1.x*tr1.y;\n       float xxx2 = bl2.x*bl2.y*tr2.x*tr2.y;\n       if(xxx < 0.5){\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n       else if(xxx >  0.5 && xxx1 < 0.5){\n           uv = scaleUV(uv,1.0/(1.0 - 2.0 * param));\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n       else if(xxx1 > 0.5 && xxx2 < 0.5){\n           uv = scaleUV(uv,1.0/(1.0 - 2.0 * param1));\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n       else{\n           uv = scaleUV(uv,1.0/(1.0 - 2.0 *param2));\n           gl_FragColor = texture2D(sTexture,uv);\n       }\n    }    else{\n        gl_FragColor = texture2D(sTexture, uv);\n    }\n}"

    return-object p0
.end method

.method protected initShader()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShader()V

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "uMode"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/KaleidoscopeRender;->mUniformModeHandle:I

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "uResolution"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/KaleidoscopeRender;->mUniformResolutionHandle:I

    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    iget p1, p0, Lcom/android/camera/effect/renders/KaleidoscopeRender;->mUniformModeHandle:I

    iget v0, p0, Lcom/android/camera/effect/renders/KaleidoscopeRender;->mKaleidoscopeId:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget p1, p0, Lcom/android/camera/effect/renders/KaleidoscopeRender;->mUniformResolutionHandle:I

    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    int-to-float p0, p0

    invoke-static {p1, v0, p0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method

.method public setKaleidoscope(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/KaleidoscopeRender;->convertToKaleidoscopeEffectId(Ljava/lang/String;)V

    return-void
.end method
